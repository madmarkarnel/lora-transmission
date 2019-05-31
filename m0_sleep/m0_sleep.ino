#include <Wire.h>
#include <LowPower.h>
#include "Sodaq_DS3231.h"
#include <SPI.h>
#include <RH_RF95.h>
#include <avr/dtostrf.h>   // dtostrf missing in Arduino Zero/Due
#include <EnableInterrupt.h>

#define BAUDRATE  115200
#define DUEBAUD   9600
#define DUESerial Serial1
#define INTERRUPTPIN  6   
#define DUETRIG 10
#define DEBUG 1
#define VBATPIN A7
//for m0
#define RFM95_CS 8
#define RFM95_RST 4
#define RFM95_INT 3
// Change to 434.0 or other frequency, must match RX's freq!
#define RF95_FREQ 433.0
#define DATALEN 200       //max size of dummy length
#define LORATIMEOUT 120000

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);
//initialize global variables
char dataToSend[DATALEN];   //lora
uint8_t payload[RH_RF95_MAX_MESSAGE_LEN];

uint8_t store_rtc = 0;   //store alarm

volatile bool OperationFlag = false;    //interrupt handler

char station_name[6] = "MADTA";
char fixTempHum[29] = "*TP:14.20*HM:99.00*PR:804.00";   //fix data
char Ctimestamp[13] = ""; 
char temperature[5] = "";

char streamBuffer[250];
int customDueFlag = 0;        //for data gathering

long timestart = 0;
long timenow = 0;
uint8_t datalogger_flag = 0;
uint8_t debug_flag = 0;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(BAUDRATE);
  DUESerial.begin(DUEBAUD);

  Wire.begin();
  rtc.begin();
  init_lora();

  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(DUETRIG, OUTPUT);

  digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(DUETRIG, LOW);
  Serial.println("initializing. . . ");
  
  attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);  //LOW

  init_Sleep();   //initialize sleep State working!!!!

  delay(10000); //It's important to leave a delay so the board can more easily be reprogrammed
  flashLed(LED_BUILTIN, 5, 100);

  // Enable interuupt every 10 minutes
  // rtc.enableInterrupts(store_rtc, 00);    // 10 minutes interval interrupt at (m,s)
  // kelangan ng rtc para ma-track ang timestamp downside magsample muna siya ng 1 minute then set na sa set time
  // rtc.enableInterrupts(Every10Minute);      // every minute, Second
  setAlarm();
  rf95.sleep();     //turn to sleep LoRa
}

void loop() {
  int timestart = millis();

  while((millis() - timestart < 20000) && (datalogger_flag == 0)){
    if(Serial.available()){
      Serial.println("Debug Mode!");
      getAtcommand();
      debug_flag = 1;
    }
    // else if(debug_flag == 0){
    //   wakeAndSleep();
    //   // datalogger_flag = 1;
    // }
  }
  wakeAndSleep();
}

void wakeAndSleep(){
  // kelangan initialize muna ang init_Sleep(); na function para gumana external interrupt
  if (OperationFlag) {
    // Whatever you want the board to do while awake goes here
    flashLed(LED_BUILTIN, 5, 100);
    Serial.println("interrupt detected");    
    attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
    /*
    readTimeStamp();
    build_message();
    send_thru_lora(dataToSend);
    delay(100);
    */
    get_Due_Data();

    setAlarm(); //set alm every 10 minutes
    // rtc.enableInterrupts(Every10Minute);  // every Minute
    delay(75);
    rtc.clearINTStatus();                 // needed for the rtc to re-trigger

    rf95.sleep();     //turn to sleep LoRa

    OperationFlag = false;
  }
  // working as of May 28, 2019
  attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
  SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk;   //disable systick interrupt
  LowPower.standby(); //enters sleep mode
  SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk;    //Enabale systick interrupt
}

void wakeAndSleep_working(){
  // kelangan initialize muna ang init_Sleep(); na function para gumana external interrupt
  if (OperationFlag) {
    // Whatever you want the board to do while awake goes here
    flashLed(LED_BUILTIN, 5, 100);
    Serial.println("interrupt detected");    
    attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
    
    readTimeStamp();
    build_message();
    send_thru_lora(dataToSend);
    delay(100);

    rtc.enableInterrupts(Every10Minute);  // every 10Minute
    delay(75);
    rtc.clearINTStatus();                 // needed for the rtc to re-trigger
    
    OperationFlag = false;
  }
  attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
  LowPower.standby(); //enters sleep mode
}

void init_lora(){
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);

  // Serial.println("LoRa TX Test!");
  // manual reset
  digitalWrite(RFM95_RST, LOW);
  delay(10);
  digitalWrite(RFM95_RST, HIGH);
  delay(10);

  while (!rf95.init()) {
    Serial.println("LoRa radio init failed");
    while (1);
  }
  Serial.println("LoRa radio init OK!");

  // Defaults after init are 434.0MHz, modulation GFSK_Rb250Fd250, +13dbM
  if (!rf95.setFrequency(RF95_FREQ)) {
    Serial.println("setFrequency failed");
    while (1);
  }
  Serial.print("Set Freq to: "); Serial.println(RF95_FREQ);

  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on
  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then 
  // you can set transmitter powers from 5 to 23 dBm:
  rf95.setTxPower(23, false);  
}

void send_thru_lora(char* radiopacket){
  int length = sizeof(payload);
  int i=0, j=0;

  //do not stack
  for(i=0; i<200; i++){
    payload[i] = (uint8_t)'0';
  }

  for(i=0; i<length; i++){
    payload[i] = (uint8_t)radiopacket[i];
  }

  payload[i] = (uint8_t)'\0';
  Serial.println((char*)payload);

  // Serial.println("sending payload!");
  rf95.send(payload, length);   //sending data to LoRa
  delay(100);  
}

void wake() {
  OperationFlag = true;
  //detach the interrupt in the ISR so that multiple ISRs are not called
  detachInterrupt(digitalPinToInterrupt(INTERRUPTPIN)); // tanggalin muna
}

void build_message(){
  for(int i=0; i<DATALEN; i++) dataToSend[i] = 0;
  strncpy(dataToSend,">>", 2);
  strncat(dataToSend, station_name, sizeof(station_name));
  // strncat(dataToSend, "*TP:", 4);   strncat(dataToSend, temperature, sizeof(temperature)); 
  strncat(dataToSend, fixTempHum, sizeof(fixTempHum));
  strncat(dataToSend, "*", 1);
  strncat(dataToSend, Ctimestamp, sizeof(Ctimestamp));
  // strncat(temp, "*TP:", 4);     strncat(temp, bme_tp, sizeof(bme_tp));  
  strncat(dataToSend, "<<", 2);

  delay(10);
}

void flashLed(int pin, int times, int wait) {
  for (int i = 0; i < times; i++) {
    digitalWrite(pin, HIGH);
    delay(wait);
    digitalWrite(pin, LOW); 
    if (i + 1 < times) {
      delay(wait);
    }
  }
}

// Measure battery voltage using divider on Feather M0
void BatteryVoltage () {
  float measuredvbat;
  measuredvbat = analogRead(VBATPIN);   //Measure the battery voltage at pin A7
  measuredvbat *= 2;    // we divided by 2, so multiply back
  measuredvbat *= 3.3;  // Multiply by 3.3V, our reference voltage
  measuredvbat /= 1024; // convert to voltage
  // return measuredvbat;
  if (DEBUG == 1) {Serial.print("BatteryVoltage: ");}
  if (DEBUG == 1) {Serial.println(measuredvbat);}
}

void init_Sleep(){
  //working to as of 05-17-2019
  SYSCTRL->XOSC32K.reg |=  (SYSCTRL_XOSC32K_RUNSTDBY | SYSCTRL_XOSC32K_ONDEMAND); // set external 32k oscillator to run when idle or sleep mode is chosen
  REG_GCLK_CLKCTRL  |= GCLK_CLKCTRL_ID(GCM_EIC) |  // generic clock multiplexer id for the external interrupt controller
                       GCLK_CLKCTRL_GEN_GCLK1 |  // generic clock 1 which is xosc32k
                       GCLK_CLKCTRL_CLKEN;       // enable it
  while (GCLK->STATUS.bit.SYNCBUSY);              // write protected, wait for sync

  EIC->WAKEUP.reg |= EIC_WAKEUP_WAKEUPEN4;        // Set External Interrupt Controller to use channel 4 (pin 6)
  
  PM->SLEEP.reg |= PM_SLEEP_IDLE_CPU;  // Enable Idle0 mode - sleep CPU clock only
  //PM->SLEEP.reg |= PM_SLEEP_IDLE_AHB; // Idle1 - sleep CPU and AHB clocks
  //PM->SLEEP.reg |= PM_SLEEP_IDLE_APB; // Idle2 - sleep CPU, AHB, and APB clocks
  
  // It is either Idle mode or Standby mode, not both. 
  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;   // Enable Standby or "deep sleep" mode
}

void wakeAndSleep_2(){
  if(OperationFlag){
    flashLed(LED_BUILTIN, 5, 100);
    Serial.println("interrupt detected");

    // attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
    delay(20);
    // LowPower.standby(); //enters sleep mode
    // LowPower.idle(IDLE_2);  //idle cpu

    SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk;   //disable systick interrupt
    // SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;   // Enable Standby or "deep sleep" mode
    __DSB();
    __WFI();   //wait for interrupt (enter sleep)
    SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk;    //Enabale systick interrupt
    attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
    OperationFlag = false;
  }
  attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), wake, FALLING);
}

void get_Due_Data(){
  int timestart = millis();
  int timenow = millis();
  uint8_t max_txt_limit = 0;
  bool offFlag = true;

  turn_ON_due();
  delay(500);
  DUESerial.write("ARQCMD6T\r\n");
  delay(100);
 
  readTimeStamp();

  while (customDueFlag == 0){
    //timeOut in case walang makuhang data sa due
    while(timenow -timestart < LORATIMEOUT){
      timenow = millis();
      no_data_from_senslope();
      break;
    }

    for (int i = 0; i < 250; ++i) streamBuffer[i]=0x00;
    DUESerial.readBytesUntil('\n',streamBuffer,250);
    delay(1000);

    if(strstr(streamBuffer, ">>")){
      if(strstr(streamBuffer, "<<")){
        Serial.println("Getting DUE data. . .");

        streamBuffer[strlen(streamBuffer) - 3] = '\0';
        // streamBuffer[strlen(streamBuffer) - 15] = '\0';   //fix kasi may TIMESTAMP000
        // strncat(streamBuffer, "*", 1);

        strncat(streamBuffer, Ctimestamp, sizeof(Ctimestamp));
        // strncat(streamBuffer, dummy_TS, sizeof(dummy_TS));
        strncat(streamBuffer, "<<", 2);
        Serial.println(streamBuffer);

        send_thru_lora(streamBuffer);
        
        flashLed(LED_BUILTIN, 2, 100);
        DUESerial.write("OK");
        /*
        // band aid para maturn off ung due
        max_txt_limit++;
        Serial.println(max_txt_limit);
        offFlag = true;
        if((max_txt_limit > 2) && (offFlag == true)){
          delay(500);
          turn_OFF_due();
          break;
          // customDueFlag = 0;   
        }
        */
      }
      else{
        Serial.println("Message incomplete");
        DUESerial.write("NO");
      }
    }
    else if(strstr(streamBuffer, "STOPLORA")){
      Serial.println("done!");
      // DUESerial.write("OK");
      turn_OFF_due();
      streamBuffer[0] = '\0';
      // customDueFlag = 1;
      flashLed(LED_BUILTIN, 4, 90);
      break;
    }
  }
  customDueFlag = 0;
}

void no_data_from_senslope(){
  Serial.println("No data from senslope");
  streamBuffer[0] = '\0';
  strncpy(streamBuffer, ">>#NODATAFROMSENSLOPE<<", 27);
  send_thru_lora(streamBuffer);
  DUESerial.write("OK");
  delay(100);
  turn_OFF_due();
}

void turn_ON_due(){
  Serial.println("Turning ON Custom Due. . .");
  digitalWrite(DUETRIG, HIGH);
  delay(100);
}

void turn_OFF_due(){
  Serial.println("Turning OFF Custom Due. . .");
  digitalWrite(DUETRIG, LOW);
  delay(100);
}