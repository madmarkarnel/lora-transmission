#include <SPI.h>
#include <RH_RF95.h>

//for m0
#define RFM95_CS    8
#define RFM95_RST   4
#define RFM95_INT   3

// for teensy
//#define RFM95_CS 10
//#define RFM95_RST 9
//#define RFM95_INT 2

// Change to 434.0 or other frequency, must match RX's freq!
// #define RF95_FREQ 433.0
#define RF95_FREQ 915.0 // 900 MHz LoRa

// Blinky on receipt
#define LED   13
#define RED   A0
#define BLUE  A1
#define GREEN A2

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

//initialize global variables
uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
uint8_t len = sizeof(buf);

// store received data
char received[250];
int tx_RSSI = 0; //tx rssi

void setup()
{
  // put your setup code here, to run once:
  Serial.begin(115200);
  init_RGB();
  init_lora();
}

void loop()
{
  // put your main code here, to run repeatedly:
  read_lora_data();
}

void init_RGB()
{
  pinMode(RED, OUTPUT);
  pinMode(BLUE, OUTPUT);
  pinMode(GREEN, OUTPUT);
}


void init_lora()
{
  pinMode(LED, OUTPUT);
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);

  Serial.println("Arduino LoRa RX Test!");

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

void read_lora_data()
{
  if (rf95.available())
  {
    // Should be a message for us now

    if (rf95.recv(buf, &len))
    {
      digitalWrite(LED, HIGH);

      int i = 0;
      for (i = 0; i < len; ++i)
      {
        received[i] = (uint8_t)buf[i];
      }
      //received from tx
      received[i] = (uint8_t)'\0';
      Serial.println(received);

      //print RSSI values
      tx_RSSI = (rf95.lastRssi(), DEC);
      Serial.print("RSSI: ");
      Serial.println(tx_RSSI);
      checkRSSI(tx_RSSI);

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


void checkRSSI(int rssi)
{
  if(rssi <= -100)
  {
    flashLed(RED, 2, 250);
    // digitalWrite(RED, HIGH);
  }
  else if(rssi < -100 && rssi > -95)
  {
    flashLed(RED, 2, 500);
  }
  else if(rssi < -95 && rssi > -90)
  {
    digitalWrite(RED, HIGH);
  }
  else if(rssi < -90 && rssi > -80)
  {
    flashLed(BLUE, 2, 500);
  }  
  else if(rssi < -80 && rssi > -67)
  {
    flashLed(BLUE, 2, 500);
  }    
  else if(rssi <= -67){
    digitalWrite(GREEN, HIGH);
  }
  else
  {
    /* code */
  }
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

