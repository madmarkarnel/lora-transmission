/**
 * Arabica datalogger

Features:
* Sends sensor data via LoRa for version 4 datalogger.
* Built-in rtc with configurable wake interrupt.
* Low power mode ~1mA

The circuit:
* Adafruit Feather M0 with RFM95 433MHz
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
#include <Regexp.h>
#include <string.h>

//gsm related
#define GSMBAUDRATE 9600
#define GSMSerial Serial2
#define MAXSMS 168

#define BAUDRATE 115200
#define DUEBAUD 9600
#define DUESerial Serial1
#define RTCINTPIN 6
#define DUETRIG 5 //moved to pin 5; default is pin 10 ; changed from pin 10 to pin 9
// #define DUETRIGOLD 10 //default is pin 10 ; changed from pin 10 to pin 9
#define DEBUG 1
#define VBATPIN A7
#define VBATEXT A5

//for m0
#define RFM95_CS 8
#define RFM95_RST 4
#define RFM95_INT 3

#define RF95_FREQ 433.0    // Change to 434.0 or other frequency, must match RX's freq!
#define DATALEN 200        //max size of dummy length
#define LORATIMEOUT 500000 //260 000 ~4 minutes 20 seconds timeout
#define DUETIMEOUT 200000  //260 000 ~4 minutes 20 seconds timeout
#define RAININT A4         //rainfall interrupt pin A4

//Pin 11-rx ; 10-tx (GSM comms)
Uart Serial2(&sercom1, 11, 10, SERCOM_RX_PAD_0, UART_TX_PAD_2);
void SERCOM1_Handler()
{
  Serial2.IrqHandler();
}

//Server number
// char serverNumber[15] = "639954645704";
String serverNumber = ("639175972526");

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

//initialize LoRa global variables
char dataToSend[DATALEN]; //lora
uint8_t payload[RH_RF95_MAX_MESSAGE_LEN];
uint8_t len = sizeof(payload);

//LoRa received
uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
uint8_t len2 = sizeof(buf);
char received[250];

char streamBuffer[250]; //store message
int customDueFlag = 0;  //for data gathering
int sendToLoRa = 0;
int tx_RSSI = 0; //tx rssi

//rain gauge
static unsigned long last_interrupt_time = 0;
const unsigned int DEBOUNCE_TIME = 40; //40
volatile float rainTips = 0.00;
char sendRainTip[7] = "0.00";

volatile bool rainFallFlag = false;  //rain tips
volatile bool OperationFlag = false; //rtc interrupt handler
bool getSensorDataFlag = false;      //rtc interrupt handler

char station_name[6] = "MADTA";
char Ctimestamp[13] = "";
char command[30];

unsigned long timestart = 0;
uint8_t serial_flag = 0;
uint8_t debug_flag = 0;
uint8_t rcv_LoRa_flag = 0;
uint16_t store_rtc = 00; //store rtc alarm

/**
 * gsm related variables
*/
char gsmReply[60];

// how much serial data we expect before a newline
//non blocking read function
const unsigned int MAX_INPUT = 50;

typedef struct
{
  boolean valid;
  char senslopeCommand[50];
  char password[50];
  char stationName[10];
} Senslope;
Senslope sensCommand;

typedef struct
{
  boolean valid;
  char inputNumber[50];
} serNumber;
serNumber flashServerNumber;

/**
 * Reserve a portion of flash memory to store an "int" variable
 * and call it "alarmStorage".
*/
FlashStorage(alarmStorage, int);
FlashStorage(loggerVersion, int);
FlashStorage(passCommand, Senslope);
FlashStorage(newServerNum, serNumber);

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

  //gsm initialization
  GSMSerial.write("AT\r");
  delay(100);
  GSMSerial.write("ATE0\r"); //turn off echo
  delay(100);
  gsmManualNetworkConnect();
  // GSMSerial.write("AT+CMGF=1\r");
  // delay(100);
  // send_thru_gsm("GSM Alive!", "639954645704");

  Serial.println("Press '?' to go DEBUG mode!");
  unsigned long serStart = millis();
  while (serial_flag == 0)
  {
    if (Serial.available())
    {
      debug_flag = 1;
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
  // sleepGSM();
  flashLed(LED_BUILTIN, 5, 100);
}

void loop()
{
  while (debug_flag == 1)
  {
    getAtcommand();
  }

  if (OperationFlag)
  {
    flashLed(LED_BUILTIN, 2, 50);
    if (get_logger_version() == 1)
    {
      send_rain_tips();
      resetRainTips();
      get_Due_Data(1);

      if (getSensorDataFlag == true && OperationFlag == true)
      {
        receive_lora_data(1);
      }

      rf95.sleep();
      // sleepGSM();
      attachInterrupt(RTCINTPIN, wake, FALLING);
    }
    else if (get_logger_version() == 2)
    {
      get_Due_Data(2); //tx of v5 logger
    }
    else
    {
      get_Due_Data(0); //default arabica
    }

    getSensorDataFlag = false;
    OperationFlag = false;
  }

  if (rainFallFlag)
  {
    flashLed(LED_BUILTIN, 1, 50);
    attachInterrupt(RAININT, rainISR, FALLING);
    rainFallFlag = false;
  }

  setAlarmEvery30(alarmFromFlashMem());
  delay(75);
  rtc.clearINTStatus();

  attachInterrupt(RAININT, rainISR, FALLING);
  attachInterrupt(RTCINTPIN, wake, FALLING);
  sleepNow();
}

void wakeAndSleep(uint8_t verSion)
{
  if (OperationFlag)
  {
    flashLed(LED_BUILTIN, 5, 100);
    // build_message();
    // delay(10);
    // send_thru_gsm(dataToSend, serverNumber);
    // delay(10);
    // resetRainTips();

    if (verSion == 1)
    {
      get_Due_Data(2); //tx of v5 logger
    }
    else
    {
      get_Due_Data(0); //default arabica
    }

    setAlarmEvery30(alarmFromFlashMem());
    rtc.clearINTStatus(); // needed to re-trigger rtc
    rf95.sleep();
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
  /**
   *  Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on
   * The default transmitter power is 13dBm, using PA_BOOST.
   * If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then
   * you can set transmitter powers from 5 to 23 dBm:
  */
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
  Serial.print("Sending to LoRa: ");
  Serial.println((char *)payload);
  // Serial.println("sending payload!");
  rf95.send(payload, length); //sending data to LoRa
  delay(100);
}

void receive_lora_data(uint8_t mode)
{
  unsigned long start = millis();
  do
  {
    // timeOut in case walang makuhang data LoRa transmitter ~4 minutes 260 000
    if ((millis() - start) > LORATIMEOUT)
    {
      start = millis();
      // send_thru_gsm("LoRa receiver time out . . .",serverNumber);
      rcv_LoRa_flag = 1;
    }

    if (rf95.available())
    {
      // Should be a message for us now
      if (rf95.recv(buf, &len2))
      {
        int i = 0;
        for (i = 0; i < len2; ++i)
        {
          received[i] = (uint8_t)buf[i];
        }
        received[i] = (uint8_t)'\0';

        if (strstr(received, ">>"))
        {
          if (mode == 1)
          {
            for (byte i = 0; i < strlen(received); i++)
            {
              received[i] = received[i + 2];
            }
            send_thru_gsm(received, get_serverNum_from_flashMem());

            //print RSSI values
            tx_RSSI = (rf95.lastRssi(), DEC);
            Serial.print("RSSI: ");
            Serial.println(tx_RSSI);
          }
          else
          {
            Serial.println("recived >>");
            Serial.println(received);
          }
        }
        else if (received, "LORASTOP")
        {
          // kelangan iextend if 2 or more sensors
          int count = 0;
          received[0] = '\0';
          Serial.println("Done getting LoRa data from transmitter.");
          count++;
          if (count >= 2)
          {
            rcv_LoRa_flag = 1;
            count = 0;
          }
        }
      }
      else
      {
        Serial.println("Receive failed");
        rcv_LoRa_flag = 1;
      }
    }
  } while (rcv_LoRa_flag == 0); //if NOT same with condition Loop will exit

  rcv_LoRa_flag = 0;
  getSensorDataFlag = false;
}

void wake()
{
  OperationFlag = true;
  //detach the interrupt in the ISR so that multiple ISRs are not called
  detachInterrupt(RTCINTPIN);
}

// GATEWAY*RSSI,MAR,MARTA,,,MARTB,,,*200212141406
char *get_rssi()
{
  char nRssi[200];
  char tx_rssi[16];
  itoa(tx_RSSI, tx_rssi, 16);
  readTimeStamp();

  strncpy(nRssi, "GATEWAY*RSSI,", 13);
  strncat(nRssi, cmd_from_flashMem(), 6);
  strncat(nRssi, ",", 1);
  strncat(nRssi, tx_rssi, 16);
  strncat(nRssi, ",", 1);
  //voltage
  strncat(nRssi, ",*", 2);
  strncat(nRssi, Ctimestamp, sizeof(Ctimestamp));
  return nRssi;
}

char *cmd_from_flashMem()
{
  String get_cmd;
  char new_cmd[10];
  sensCommand = passCommand.read();
  get_cmd = sensCommand.stationName;
  get_cmd.replace("\r", "");
  get_cmd.toCharArray(new_cmd, 10);
  return new_cmd;
}

String get_serverNum_from_flashMem()
{
  String flashNum;
  flashServerNumber = newServerNum.read();
  flashNum = flashServerNumber.inputNumber;
  flashNum.replace("\r", "");
  return flashNum;
}

void build_message()
{
  char csq[5];
  char temp[6];
  char volt[6];
  getCSQ().toCharArray(csq, 5);
  dtostrf((readTemp()), 5, 2, temp);
  dtostrf(rainTips, 3, 2, sendRainTip); //convert rainTip to char
  dtostrf((BatteryVoltage(get_logger_version())), 4, 2, volt);
  getPwrdFromMemory();
  readTimeStamp();

  for (int i = 0; i < DATALEN; i++)
    dataToSend[i] = 0;
  // strncpy((dataToSend), (sensCommand.stationName), (10));
  strncpy((dataToSend), (cmd_from_flashMem()), (10));
  strncat(dataToSend, "W", 1);
  strncat(dataToSend, ",", 1);
  strncat(dataToSend, temp, sizeof(temp));
  strncat(dataToSend, ",", 1);
  strncat(dataToSend, sendRainTip, sizeof(sendRainTip));
  strncat(dataToSend, ",", 1);
  strncat(dataToSend, volt, sizeof(volt));
  strncat(dataToSend, ",", 1);
  strncat(dataToSend, csq, sizeof(csq));
  strncat(dataToSend, ",", 1);
  strncat(dataToSend, Ctimestamp, sizeof(Ctimestamp));
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

char *read_batt_vol(uint8_t ver)
{
  char volt[6];
  char voltMessage[200];
  dtostrf((BatteryVoltage(ver)), 4, 2, volt);
  readTimeStamp();

  strncpy(voltMessage, ">>", 2);
  strncat(voltMessage, cmd_from_flashMem(), 10);
  strncat(voltMessage, "*VOLT:", 7);
  strncat(voltMessage, volt, sizeof(volt));
  strncat(voltMessage, "*", 1);
  if (ver == 0)
  {
    strncat(voltMessage, Ctimestamp, sizeof(Ctimestamp));
    strncat(voltMessage, "<<", 2);
  }
  else
  {
    strncat(voltMessage, Ctimestamp, sizeof(Ctimestamp));
  }
  return voltMessage;
}

// Measure battery voltage using divider on Feather M0
float BatteryVoltage(uint8_t ver)
{
  float measuredvbat;
  int vbatpin;
  if (ver == 1)
  {
    measuredvbat = analogRead(VBATPIN); //Measure the battery voltage at pin A7
    measuredvbat *= 2;                  // we divided by 2, so multiply back
    measuredvbat *= 3.3;                // Multiply by 3.3V, our reference voltage
    measuredvbat /= 1024;               // convert to voltage
  }
  else
  {
    //Voltage Divider 1M ; 100k ;
    measuredvbat = analogRead(VBATEXT);
    measuredvbat *= 3.3;    // reference voltage
    measuredvbat /= 1024.0; // adc max count
    measuredvbat *= 11.0;    // (100k+1M)/100k
  }
  return measuredvbat;
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

/**
 * Get custom due sensor data.
 * ~5 minutes timeout if no data read.  
 * mode in sending data: 1-gsm ; 0 - LoRa(defualt) ; 2 - V5 logger
*/
void get_Due_Data(uint8_t mode)
{
  unsigned long start = millis();
  readTimeStamp();

  if (mode == 0 || mode == 2)
  {
    send_thru_lora(read_batt_vol(mode));
  }

  turn_ON_due(get_logger_version());
  delay(500);

  sensCommand = passCommand.read();
  command[0] = '\0';
  strncpy((command), (sensCommand.senslopeCommand), (10));
  strncat(command, "/", 1);
  strncat(command, Ctimestamp, sizeof(Ctimestamp));
  Serial.println(command);
  DUESerial.write(command);

  while (customDueFlag == 0)
  {
    // timeOut in case walang makuhang data sa due
    if ((millis() - start) > DUETIMEOUT)
    {
      start = millis();
      no_data_from_senslope(mode);
      customDueFlag = 1;
    }

    for (int i = 0; i < 250; ++i)
      streamBuffer[i] = 0x00;
    DUESerial.readBytesUntil('\n', streamBuffer, 250);
    delay(500);

    if (strstr(streamBuffer, ">>"))
    {
      if (strstr(streamBuffer, "*"))
      {
        Serial.println("Getting sensor data. . .");
        if (mode == 1)
        {
          /**
            * Remove 1st and 2nd character data in string
            * Not needed in GSM mode 
          */
          for (byte i = 0; i < strlen(streamBuffer); i++)
          {
            streamBuffer[i] = streamBuffer[i + 2];
          }
          send_thru_gsm(streamBuffer, get_serverNum_from_flashMem()); //send to GSM
          flashLed(LED_BUILTIN, 2, 100);
          DUESerial.write("OK");
        }
        else if (mode == 2)
        {
          send_thru_lora(streamBuffer);
          flashLed(LED_BUILTIN, 2, 100);
          DUESerial.write("OK");
        }
        else
        {
          strncat(streamBuffer, "<<", 2);
          delay(10);
          send_thru_lora(streamBuffer);
          flashLed(LED_BUILTIN, 2, 100);
          DUESerial.write("OK");
        }
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
      send_thru_lora("STOPLORA");
      Serial.println("Done getting DUE data!");
      streamBuffer[0] = '\0';
      flashLed(LED_BUILTIN, 4, 90);
      customDueFlag = 1;
    }
  }
  turn_OFF_due(get_logger_version());
  customDueFlag = 0;
  getSensorDataFlag = true;
}

/**
 * Sends no data from senslope if no data available
 * mode :     1 - gsm
 * default:   0 - LoRa
*/
void no_data_from_senslope(uint8_t mode)
{
  readTimeStamp();
  sensCommand = passCommand.read(); //read from flash memory
  Serial.println("No data from senslope");
  streamBuffer[0] = '\0';

  if (mode == 1)
  {
    strncpy((streamBuffer), (cmd_from_flashMem()), (10));
  }
  else
  {
    strncpy(streamBuffer, ">>", 2);
    strncat((streamBuffer), (cmd_from_flashMem()), (10));
  }

  strncat(streamBuffer, "*NODATAFROMSENSLOPE*", 22);
  strncat(streamBuffer, Ctimestamp, sizeof(Ctimestamp));

  if (mode == 1)
  {
    send_thru_gsm(streamBuffer, get_serverNum_from_flashMem());
  }
  else if (mode == 2)
  {
    send_thru_lora(streamBuffer);
  }
  else
  {
    strncat(streamBuffer, "<<", 2);
    send_thru_lora(streamBuffer);
  }
  // Serial.println(streamBuffer);
  customDueFlag = 1;
}

void turn_ON_due(uint8_t mode)
{
  Serial.println("Turning ON Custom Due. . .");
  // if (mode == 1 || mode == 2)
  // {
  //   digitalWrite(DUETRIGOLD, HIGH);
  // }
  // else
  // {
  digitalWrite(DUETRIG, HIGH);
  // }
  delay(100);
}

void turn_OFF_due(uint8_t mode)
{
  Serial.println("Turning OFF Custom Due. . .");
  // if (mode == 1 || mode == 2)
  // {
  //   digitalWrite(DUETRIGOLD, LOW);
  // }
  // else
  // {
  digitalWrite(DUETRIG, LOW);
  // }
  delay(100);
}

void rainISR()
{
  detachInterrupt(digitalPinToInterrupt(RAININT));
  unsigned long interrupt_time = millis();
  if (interrupt_time - last_interrupt_time > DEBOUNCE_TIME)
  {
    rainTips += 0.5;
  }
  last_interrupt_time = interrupt_time;
  if (OperationFlag == true || debug_flag == 1)
  {
    attachInterrupt(RAININT, rainISR, FALLING);
  }
  else
  {
    rainFallFlag = true;
  }
}

void resetRainTips()
{
  rainTips = 0.00;
  delay(75);
  dtostrf(rainTips, 3, 2, sendRainTip); //convert rainTip to char
  Serial.print("Rain tips: ");
  Serial.println(rainTips);
}

/**
 * main code
 * rain gauge
 * sensor
*/
void gateway_mode()
{
  if (OperationFlag)
  {
    // wakeGSM();
    flashLed(LED_BUILTIN, 2, 50);
    send_rain_tips();
    resetRainTips();
    get_Due_Data(1);

    if (getSensorDataFlag == true && OperationFlag == true)
    {
      receive_lora_data(1);
    }

    rf95.sleep();
    // sleepGSM();
    attachInterrupt(RTCINTPIN, wake, FALLING);
    OperationFlag = false;
    getSensorDataFlag = false;
  }

  if (rainFallFlag)
  {
    flashLed(LED_BUILTIN, 1, 50);
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
  delay(100);
  send_thru_gsm(dataToSend, get_serverNum_from_flashMem());
  // delay(50);
}
