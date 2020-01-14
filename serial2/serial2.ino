#include <Arduino.h>          // required before wiring_private.h
#include "wiring_private.h"   // pinPeripheral() function

#define BAUDRATE  115200
#define GSMBAUDRATE 9600
#define GSMSerial Serial2
#define MAXSMS 168

//Pin 11-rx ; 10-tx
Uart Serial2 (&sercom1, 11, 10, SERCOM_RX_PAD_0, UART_TX_PAD_2);
void SERCOM1_Handler()
{
  Serial2.IrqHandler();
}

char serverNumber[15] = "639161640761"; 
// char testMessage[168] = "Test of char message";      
char testMessage[168] = "adfbsddfbsdfbsdfbsdfbsdfhbfauhadldfvkjdcvludfvbkjdfb78342u32hh2eu232md2i3i3ho2hr823i2nd2h2oe92832nfu2hefh3h8f29e0f239298ef9e8928ehf928h2098e208ehh02e";                            

void setup()
{
  delay(1000);
  Serial.begin(BAUDRATE);
  GSMSerial.begin(9600);
  delay(1000);

  // Assign pins 10 & 11 SERCOM functionality
  pinPeripheral(10, PIO_SERCOM);
  pinPeripheral(11, PIO_SERCOM);

  getCSQ();

  flashLed(LED_BUILTIN, 5, 100);

  // sendMessage("kamote testing message", "639161640761");
}

void loop()
{
  //run forever and ever
  // updateSerial();
  // pduSET();
  // delay(3000);
}

void sendMessage(char *inputMessage, char *serverNumber){
  char msgToSend[250];
  int maxPhoneNum = 15;
  char sendingNumber[15];

  String smsCMD = ("AT+CMGS=");
  String quote = ("\"");
  String CR = ("\r");

  //inputMessage
  for (int i = 0; i < 168; i++)
  {
    msgToSend[i] = (uint8_t)'0';
  }
  for (int i = 0; i < 168; i++)
  {
    msgToSend[i] = (uint8_t)inputMessage[i];
  }
  //serverNumber
  for (int i = 0; i < maxPhoneNum; i++)
  {
    sendingNumber[i] = (uint8_t)'0';
  }
  for (int i = 0; i < maxPhoneNum; i++)
  {
    sendingNumber[i] = (uint8_t)serverNumber[i];
  }

  GSMSerial.write("AT\r");
  delay(500);
  updateSerial();   //prints the reply of gsm

  GSMSerial.write("AT+CMGF=1\r");   
  delay(500);
  updateSerial();   //prints the reply of gsm

  String rawMsg = smsCMD + quote + serverNumber + quote + CR;
  rawMsg.toCharArray(msgToSend, 250);
  strncat(msgToSend, inputMessage, 168);
  
  GSMSerial.write(msgToSend);
  delay(500);
  updateSerial();   //print the reply of the gsm

  GSMSerial.write(26);  //ctrl Z
}

void getCSQ(){
  // char csqStore[20];

  GSMSerial.write("AT+CSQ\r");
  delay(300);
  String csq = GSMSerial.readString();
  // csq.toCharArray(csqStore, 20);
  // char csq = (char)GSMSerial.read();
  Serial.println(csq);

  // sendMessage(csqStore, serverNumber);
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