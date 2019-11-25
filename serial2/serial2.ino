#include <Arduino.h>          // required before wiring_private.h
#include "wiring_private.h"   // pinPeripheral() function
 
//Pin 11-rx ; 10-tx
Uart Serial2 (&sercom1, 11, 10, SERCOM_RX_PAD_0, UART_TX_PAD_2);

void SERCOM1_Handler()
{
  Serial2.IrqHandler();
}

#define BAUDRATE  115200
#define GSMBAUDRATE 9600
#define GSMSerial Serial2

char msgToSend[250];
char msgToSend1[250];
char gsmReply[10];

String message = ("This is my first ARDUINO PDU convertion message");                                 //recipient's phone number in international format
String phone_nr = ("639161640761");                                   

String smsCMD = ("AT+CMGS=");
String quote = ("\"");
String CR = ("\r");

String messageToSend;
String first_const = ("0011000C9136");    //country code last two digits
String second_const = ("0000AA");

void setup()
{
  delay(1000);
  Serial.begin(BAUDRATE);
  GSMSerial.begin(9600);
  delay(1000);

  // Assign pins 10 & 11 SERCOM functionality
  pinPeripheral(10, PIO_SERCOM);
  pinPeripheral(11, PIO_SERCOM);

  Serial.println("AT");
  GSMSerial.write("AT\r");
  delay(500);
  updateSerial();

  flashLed(LED_BUILTIN, 5, 100);
  sendMessage();
}

void loop()
{
  //run forever and ever
  // updateSerial();
  // pduSET();
  // delay(3000);
}

void updateSerial()
{
  delay(500);
  while (Serial.available()) 
  {
    GSMSerial.write(Serial.read());     //Forward what Serial received to Software Serial Port
  }
  while(GSMSerial.available()) 
  {
    Serial.write(GSMSerial.read());     //Forward what Software Serial received to Serial Port
  }
}

void sendMessage(){

  GSMSerial.write("AT\r");
  delay(500);
  updateSerial();

  GSMSerial.write("AT+CMGF=1\r");   
  delay(1000);
  updateSerial();

  String rawMsg = smsCMD + quote + phone_nr + quote + CR + message;
  rawMsg.toCharArray(msgToSend, 250);
  Serial.println(msgToSend);
  
  GSMSerial.write(msgToSend);
  delay(1000);
  updateSerial();

  GSMSerial.write(26);  //ctrl Z
  updateSerial();
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