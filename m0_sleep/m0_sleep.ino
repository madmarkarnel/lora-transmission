/*
Arabica Datalogger

- Sends sensor data via LoRa for version 4 datalogger.
- Built-in rtc with configurable wake interrupt.
- Low power mode ~1mA

The circuit:
* Arabica Board with rtc

Created: 12 October 2019
By : Mark Arnel B. Domingo
Modified: 23 January 2020
*/

#include <Wire.h>
#include <LowPower.h>
#include "Sodaq_DS3231.h"
#include <SPI.h>
#include <RH_RF95.h>
#include <avr/dtostrf.h> // dtostrf missing in Arduino Zero/Due
#include <EnableInterrupt.h>
#include <FlashStorage.h>
#include <Arduino.h>        // required before wiring_private.h
#include "wiring_private.h" // pinPeripheral() function

//gsm related
#define GSMBAUDRATE 9600
#define GSMSerial Serial2
#define MAXSMS 168

#define BAUDRATE 115200
#define DUEBAUD 9600
#define DUESerial Serial1
#define RTCINTPIN 6
#define DUETRIG 9     //default is pin 10 ; changed from pin 10 to pin 9
#define DEBUG 1
#define VBATPIN A7

//for m0
#define RFM95_CS 8
#define RFM95_RST 4
#define RFM95_INT 3
// Change to 434.0 or other frequency, must match RX's freq!
#define RF95_FREQ 433.0
#define DATALEN 200        //max size of dummy length
#define LORATIMEOUT 60000 //260 000 ~4 minutes 20 seconds timeout
#define RAININT A4    //rainfall interrupt pin A4

//Pin 11-rx ; 10-tx (GSM comms)
Uart Serial2(&sercom1, 11, 10, SERCOM_RX_PAD_0, UART_TX_PAD_2);
void SERCOM1_Handler()
{
  Serial2.IrqHandler();
}

//test GSM testMessage
char serverNumber[15] = "639954645704";
// char testMessage[168] = "Test of char message";
char testMessage[168] = "adfbsddfbsdfbsdfbsdfbsdfhbfauhadldfvkjdcvludfvbkjdfb78342u32hh2eu232md2i3i3ho2hr823i2nd2h2oe92832nfu2hefh3h8f29e0f239298ef9e8928ehf928h2098e208ehh02e";

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

//initialize LoRa global variables
char dataToSend[DATALEN]; //lora
uint8_t payload[RH_RF95_MAX_MESSAGE_LEN];
uint8_t len = sizeof(payload);
char streamBuffer[250];     //store message
int customDueFlag = 0;      //for data gathering
int sendToLoRa = 0;
int tx_RSSI = 0;      //tx rssi

//rain gauge reading
static unsigned long last_interrupt_time = 0;
const unsigned int DEBOUNCE_TIME = 40; //40
// volatile uint8_t rainTips = 0;         //store rain tips
volatile float rainTips = 0.00;
char sendRainTip[7] = "0.00";

volatile bool rainFallFlag = false;  //rain tips
volatile bool OperationFlag = false; //rtc interrupt handler

char station_name[6] = "MADTA";
char Ctimestamp[13] = "";
char command[30];

unsigned long timestart = 0;
// unsigned long timenow = 0;
uint8_t serial_flag = 0;
uint8_t debug_flag = 0;

uint16_t store_rtc = 00; //store rtc alarm

//gsm
unsigned char SigQ[50];

typedef struct
{
  boolean valid;
  char senslopeCommand[50];
  char password[50];
  char stationName[10];
} Senslope;

// Reserve a portion of flash memory to store an "int" variable
// and call it "alarmStorage".
FlashStorage(alarmStorage, int);
FlashStorage(passCommand, Senslope);
Senslope sensCommand;

void setup()
{
  // put your setup code here, to run once:
  Serial.begin(BAUDRATE);
  DUESerial.begin(DUEBAUD);
  GSMSerial.begin(9600);

  // Assign pins 10 & 11 SERCOM functionality
  pinPeripheral(10, PIO_SERCOM);
  pinPeripheral(11, PIO_SERCOM);

  Wire.begin();
  rtc.begin();
  init_lora();

  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(DUETRIG, OUTPUT);

  digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(DUETRIG, LOW);

  //rain gauge interrupt
  attachInterrupt(RAININT, rainISR, FALLING);

  attachInterrupt(RTCINTPIN, wake, FALLING);
  init_Sleep(); //initialize sleep State working!!!!

  setAlarmEvery30(alarmFromFlashMem()); //alarm settings
  rf95.sleep();

  GSMSerial.write("AT\r");
  delay(10);
  GSMSerial.write("ATE0\r"); //turn off echo
  delay(10);
  sendMessage("GSM is Alive!", serverNumber);

  Serial.println("Press '?' to go DEBUG mode!");

  unsigned long serStart = millis();
  while (serial_flag == 0)
  {
    if (Serial.available())
    {
      debug_flag = 1;
      delay(100);
      Serial.println("Debug Mode!");
      serial_flag = 1;
    }
    // timeOut in case walang serial na makuha in ~10 seconds
    if ((millis() - serStart) > 10000)
    {
      serStart = millis();
      serial_flag = 1;
    }
  }
  sleepGSM();
  flashLed(LED_BUILTIN, 5, 100);
}

void loop()
{
  while (debug_flag == 1)
  {
    // wakeGSM();
    getAtcommand();
    // readRainTips();
    // OperationFlag = false;
    // rainFallFlag = false;
  }
  readRainTips();
  // wakeAndSleep();
}

void wakeAndSleep()
{
  if (OperationFlag)
  {
    flashLed(LED_BUILTIN, 5, 100);

    build_message();
    delay(10);
    sendMessage(dataToSend, serverNumber);
    delay(10);
    resetRainTips();

    get_Due_Data(); //get data from sensors

    //real time clock alarm settings
    setAlarmEvery30(alarmFromFlashMem());
    delay(75);
    rtc.clearINTStatus(); // needed to re-trigger rtc

    rf95.sleep(); //sleep LoRa
    OperationFlag = false;
  }
  // working as of May 28, 2019
  sleepNow();
  /*
  attachInterrupt(digitalPinToInterrupt(RTCINTPIN), wake, FALLING);
  SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk; //disable systick interrupt
  LowPower.standby();                         //enters sleep mode
  SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk;  //Enabale systick interrupt
  */
}

void sleepNow()
{
  //re-enable rain gauge interrupt before going to sleep
  // attachInterrupt(digitalPinToInterrupt(RAININT), rainISR, FALLING);
  SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk; //disable systick interrupt
  LowPower.standby();                         //enters sleep mode
  SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk;  //Enabale systick interrupt
}

void init_lora()
{
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);

  // manual reset
  digitalWrite(RFM95_RST, LOW);
  delay(10);
  digitalWrite(RFM95_RST, HIGH);
  delay(10);

  while (!rf95.init())
  {
    Serial.println("LoRa radio init failed");
    while (1)
      ;
  }
  Serial.println("LoRa radio init OK!");

  // Defaults after init are 434.0MHz, modulation GFSK_Rb250Fd250, +13dbM
  if (!rf95.setFrequency(RF95_FREQ))
  {
    Serial.println("setFrequency failed");
    while (1)
      ;
  }
  Serial.print("Set Freq to: ");
  Serial.println(RF95_FREQ);

  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on
  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then
  // you can set transmitter powers from 5 to 23 dBm:
  rf95.setTxPower(23, false);
}

void send_thru_lora(char *radiopacket)
{
  int length = sizeof(payload);
  int i = 0, j = 0;
  //do not stack
  for (i = 0; i < 200; i++)
  {
    payload[i] = (uint8_t)'0';
  }
  for (i = 0; i < length; i++)
  {
    payload[i] = (uint8_t)radiopacket[i];
  }
  payload[i] = (uint8_t)'\0';
  Serial.println((char *)payload);
  // Serial.println("sending payload!");
  rf95.send(payload, length); //sending data to LoRa
  delay(100);
}

void receive_lora_data()
{
  if (rf95.available())
  {
    // Should be a message for us now

    if (rf95.recv(payload, &len))
    {
      // digitalWrite(LED, HIGH);

      int i = 0;
      for (i = 0; i < len; ++i)
      {
        streamBuffer[i] = (uint8_t)payload[i];
      }
      //received from tx
      streamBuffer[i] = (uint8_t)'\0';
      Serial.println(streamBuffer);

      //print RSSI values
      tx_RSSI = (rf95.lastRssi(), DEC);
      Serial.print("RSSI: ");
      Serial.println(tx_RSSI);
      // checkRSSI(tx_RSSI);

      /*
      // Send a reply
      uint8_t data[] = "mad back to you";
      rf95.send(data, sizeof(data));
      rf95.waitPacketSent();
      Serial.println("Sent a reply");
      digitalWrite(LED, LOW);
      */
    }
    else
    {
      Serial.println("Receive failed");
    }
  }
}

void wake()
{
  OperationFlag = true;
  //detach the interrupt in the ISR so that multiple ISRs are not called
  detachInterrupt(RTCINTPIN);
}

void build_message()
{
  dtostrf(rainTips, 3, 2, sendRainTip); //comnvert rainTip to char
  getPwrdFromMemory();
  readTimeStamp();
  for (int i = 0; i < DATALEN; i++)
    dataToSend[i] = 0;
  strncpy(dataToSend, ">>", 2);
  // strncat(dataToSend, "VOLTAGE#", 1);
  strncat((dataToSend), (sensCommand.stationName), (10));
  // strncat(dataToSend, "*VOLT:", 7);
  // strncat(dataToSend, featherVoltage, sizeof(featherVoltage));
  strncat(dataToSend, "*RAIN:", 6);
  strncat(dataToSend, sendRainTip, sizeof(sendRainTip));
  strncat(dataToSend, "*", 1);
  strncat(dataToSend, Ctimestamp, sizeof(Ctimestamp));
  strncat(dataToSend, "<<", 2);
  delay(10);
  Serial.println(dataToSend);
}

void flashLed(int pin, int times, int wait)
{
  for (int i = 0; i < times; i++)
  {
    digitalWrite(pin, HIGH);
    delay(wait);
    digitalWrite(pin, LOW);
    if (i + 1 < times)
    {
      delay(wait);
    }
  }
}

// Measure battery voltage using divider on Feather M0
void BatteryVoltage()
{
  float measuredvbat;
  measuredvbat = analogRead(VBATPIN); //Measure the battery voltage at pin A7
  measuredvbat *= 2;                  // we divided by 2, so multiply back
  measuredvbat *= 3.3;                // Multiply by 3.3V, our reference voltage
  measuredvbat /= 1024;               // convert to voltage
  // return measuredvbat;
  if (DEBUG == 1)
  {
    Serial.print("BatteryVoltage: ");
  }
  if (DEBUG == 1)
  {
    Serial.println(measuredvbat);
  }
}

/*
- interrupts EIC
EXTERNAL_INT_2: A0, A5, 10
EXTERNAL_INT_4: A3, 6
EXTERNAL_INT_5: A4, 7
EXTERNAL_INT_6: 8, SDA
EXTERNAL_INT_7: 9, SCL
EXTERNAL_INT_9: A2, 3
EXTERNAL_INT_10: TX, MOSI
EXTERNAL_INT_11: RX, SCK
*/

void init_Sleep()
{
  //working to as of 05-17-2019
  SYSCTRL->XOSC32K.reg |= (SYSCTRL_XOSC32K_RUNSTDBY | SYSCTRL_XOSC32K_ONDEMAND); // set external 32k oscillator to run when idle or sleep mode is chosen
  REG_GCLK_CLKCTRL |= GCLK_CLKCTRL_ID(GCM_EIC) |                                 // generic clock multiplexer id for the external interrupt controller
                      GCLK_CLKCTRL_GEN_GCLK1 |                                   // generic clock 1 which is xosc32k
                      GCLK_CLKCTRL_CLKEN;                                        // enable it
  while (GCLK->STATUS.bit.SYNCBUSY)
    ; // write protected, wait for sync

  EIC->WAKEUP.reg |= EIC_WAKEUP_WAKEUPEN4; // Set External Interrupt Controller to use channel 4 (pin 6)
  EIC->WAKEUP.reg |= EIC_WAKEUP_WAKEUPEN5; // Set External Interrupt Controller to use channel 2 (pin A4)

  PM->SLEEP.reg |= PM_SLEEP_IDLE_CPU; // Enable Idle0 mode - sleep CPU clock only
  //PM->SLEEP.reg |= PM_SLEEP_IDLE_AHB; // Idle1 - sleep CPU and AHB clocks
  //PM->SLEEP.reg |= PM_SLEEP_IDLE_APB; // Idle2 - sleep CPU, AHB, and APB clocks

  // It is either Idle mode or Standby mode, not both.
  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk; // Enable Standby or "deep sleep" mode
}

void getPwrdFromMemory()
{
  sensCommand = passCommand.read();
}

void get_Due_Data()
{
  unsigned long start = millis();

  turn_ON_due();
  delay(500);

  readTimeStamp();

  sensCommand = passCommand.read();
  command[0] = '\0';
  strncpy((command), (sensCommand.senslopeCommand), (10));
  strncat(command, "/", 1);
  strncat(command, Ctimestamp, sizeof(Ctimestamp));
  Serial.println(command);
  DUESerial.write(command);

  //original command
  // sensCommand = passCommand.read();
  // DUESerial.write(sensCommand.senslopeCommand);
  delay(100);

  while (customDueFlag == 0)
  {
    for (int i = 0; i < 250; ++i)
      streamBuffer[i] = 0x00;
    DUESerial.readBytesUntil('\n', streamBuffer, 250);
    delay(500);

    // timeOut in case walang makuhang data sa due
    if ((millis() - start) > LORATIMEOUT)
    {
      start = millis();
      no_data_from_senslope();
      customDueFlag = 1;
    }

    if (strstr(streamBuffer, ">>"))
    {
      if (strstr(streamBuffer, "*"))
      {
        Serial.println("Getting DUE data. . .");

        // removed
        // strncat(streamBuffer, Ctimestamp, sizeof(Ctimestamp));
        strncat(streamBuffer, "<<", 2);

        // send_thru_lora(streamBuffer);            //send to LoRa
        Serial.println(streamBuffer);
        sendMessage(streamBuffer, serverNumber); //send to GSM
        flashLed(LED_BUILTIN, 2, 100);
        DUESerial.write("OK");
      }
      else
      {
        //maglagay ng counter max 5 then exit
        Serial.println("Message incomplete");
        DUESerial.write("NO");
      }
    }
    else if (strstr(streamBuffer, "STOPLORA"))
    {
      Serial.println("Done getting DUE data!");
      // turn_OFF_due();
      streamBuffer[0] = '\0';
      flashLed(LED_BUILTIN, 4, 90);
      customDueFlag = 1;
    }
  }
  turn_OFF_due();
  customDueFlag = 0;
}

void no_data_from_senslope()
{
  readTimeStamp();
  sensCommand = passCommand.read(); //read from flash memory

  Serial.println("No data from senslope");
  streamBuffer[0] = '\0';
  strncpy(streamBuffer, ">>", 2);
  strncat((streamBuffer), (sensCommand.stationName), (10));
  strncat(streamBuffer, "*NODATAFROMSENSLOPE*", 22);
  strncat(streamBuffer, Ctimestamp, sizeof(Ctimestamp));
  strncat(streamBuffer, "<<", 2);
  delay(50);
  // send_thru_lora(streamBuffer);
  sendMessage(streamBuffer, serverNumber); //send to GSM
  delay(50);
  customDueFlag = 1;
}

void turn_ON_due()
{
  Serial.println("Turning ON Custom Due. . .");
  digitalWrite(DUETRIG, HIGH);
  delay(100);
}

void turn_OFF_due()
{
  Serial.println("Turning OFF Custom Due. . .");
  digitalWrite(DUETRIG, LOW);
  delay(100);
}

void rainISR()
{
  rainFallFlag = true;
  detachInterrupt(digitalPinToInterrupt(RAININT));

  unsigned long interrupt_time = millis();
  if (interrupt_time - last_interrupt_time > DEBOUNCE_TIME)
  {
    rainTips += 0.5;
  }
  last_interrupt_time = interrupt_time;

  // attachInterrupt(RAININT, rainISR, FALLING);  
}

void resetRainTips()
{
  rainTips = 0.00;
  delay(75);
  dtostrf(rainTips, 3, 2, sendRainTip); //convert rainTip to char
  Serial.print("Rain tips: ");
  Serial.println(rainTips);
}

void readRainTips()
{
  if (OperationFlag)
  {
    wakeGSM();
    flashLed(LED_BUILTIN, 3, 100);

    send_rain_tips();
    resetRainTips();

    get_Due_Data(); //get data from sensors

    //real time clock alarm settings
    // setAlarmEvery30(alarmFromFlashMem());
    // delay(75);
    // rtc.clearINTStatus(); // needed to re-trigger rtc

    rf95.sleep(); //sleep LoRa
    sleepGSM();
    
    delay(75);
    attachInterrupt(RTCINTPIN, wake, FALLING);
    delay(100);
    OperationFlag = false;
  }

  if (rainFallFlag)
  {
    flashLed(LED_BUILTIN, 2, 80);
    
    // unsigned long interrupt_time = millis();
    // if (interrupt_time - last_interrupt_time > DEBOUNCE_TIME)
    // {
    //   rainTips += 0.5;
    // }
    // last_interrupt_time = interrupt_time;

    // send_rain_tips();
    
    attachInterrupt(RAININT, rainISR, FALLING); //re-enable rain gauge interrupt before going to sleep
    rainFallFlag = false;
  }

  //real time clock alarm settings
  setAlarmEvery30(alarmFromFlashMem());
  delay(75);
  rtc.clearINTStatus(); // needed to re-trigger rtc

  attachInterrupt(RAININT, rainISR, FALLING);
  attachInterrupt(RTCINTPIN, wake, FALLING);
  sleepNow();
}

void send_rain_tips()
{
  build_message();
  delay(50);
  sendMessage(dataToSend, serverNumber);
  delay(50);
}