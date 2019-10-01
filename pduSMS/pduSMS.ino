#define BAUDRATE  115200
#define GSMBAUDRATE 9600
#define GSMSerial Serial1

char msgToSend[250];
char msgToSend1[250];
char gsmReply[10];

String message = ("This is my first ARDUINO PDU convertion message");
// String message = (">>MNGSA*b*9102931029016EFD2000026ED43000036EF73000046E114000056E034000066E2E4000076E144000086EEF3000096ED030000A6E0830000B6E3330000C6E1430000D6E363000*170325153449<<"); //here you can type in the text you want to send
// String phone_nr = ("639954645704");                                   //recipient's phone number in international format
String phone_nr = ("639161640761");                                   

byte original_byte;
byte newbyte;
byte sevenByte;
int pdu_length;
int counter;
String newphone_nr;
int numlength;

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

  pduSET();
  // convertToPDU();
  // convertToPDUedit();

  // sendMessage();

  flashLed(LED_BUILTIN, 5, 100);
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

void pduSET(){
  newphone_nr = "";
  for (int x = 1; x < 12; x = x + 2)
  {
    newphone_nr.concat(phone_nr.charAt(x + 2));
    newphone_nr.concat(phone_nr.charAt(x + 1));
  }

  Serial.print("New phone number: ");
  Serial.println(newphone_nr);

  String sevenOld;
  String seven;
  String newSeven;
  counter = 0;
  newbyte = 0;
  for (int j = 0; j < message.length(); j++)
  {
    original_byte = message.charAt(j); //one by one we take each byte out of the original text

    for (int i = 0; i < 7; i++)
    {
      newbyte = newbyte | bitRead(original_byte, i) << counter; //take the bits 0 to 6 of the old byte, shift as required for the new byte and add to the new byte
      counter++;
      if (counter == 8)
      {
        counter = 0; //if a new byte is complete, set the counter to 0
        if (newbyte < 16)
        {
          // Serial.print(0);
          // "0" + sevenOld;
          sevenOld = "0" + newSeven;
        }                           //each byte in HEX format should consist of 2 characters, if necessary add 0 in front
        Serial.println(newbyte, HEX); //when the new byte is finished, send it to the mobile phone
        // Serial.print(sevenByte);
        newSeven = String(newbyte, HEX);
        sevenOld = newSeven;
        // newSeven.toUpperCase();
        // Serial.print(newSeven);

        newbyte = 0;                // the next new byte will start again from 0
      }
    }
    seven += sevenOld;
  }
  seven.toUpperCase();  
  Serial.println(seven);
  
  messageToSend = first_const + newphone_nr + second_const;

  Serial.println(messageToSend);
}

void convertToPDUedit(){

  numlength = phone_nr.length() - 1;

  if (numlength % 2 != 0)
  {
    phone_nr += "F";
  }

  for (int x = 0; x < numlength; x = x + 2)
  {
    newphone_nr.concat(phone_nr.charAt(x + 2));
    newphone_nr.concat(phone_nr.charAt(x + 1));
  }

  //getting ready to send the SMS
  // Serial.println("AT"); //optional: say hello to the modem
  // delay(3000);

  int textlength = message.length() * 7 / 8; // text message length: number of characters*7/8
  if (message.length() * 7 % 8 != 0)
  {
    textlength++;
  }
  if (numlength % 2 != 0)
  { //if the length of phone number was uneven, it now increases by 1 because of the added "F"
    pdu_length = (8 + (numlength + 1) / 2 + textlength);
  }
  else
  { //8 bytes of parameters + (length of phonenumber)/2 + number of bytes in the text
    pdu_length = (8 + numlength / 2 + textlength);
  }

  // Serial.print("AT+CMGW="); //message will be stored in the mobile phone - AT+CMGS will send it off.
  // Serial.println(pdu_length);
  // delay(3000);

  // Serial.print("001100"); //these are some parameters which we don't need to bother about
  String one = ("001100");

  if (numlength < 16)
  { //now we have to send the byte containing the length of the phone number in HEX format
    // Serial.print(0);
  }                             //the byte in HEX format needs to be 2 characters long; if needed we add a 0 in front, e.g. "C" will become "0C"
  // Serial.print(numlength, HEX); //length telnr - this time any additional F is not to be considered
  String two = String(numlength, HEX);
  two.toUpperCase();

  String three = ("0C91");    //constant
  // Serial.print("63");           // philippines phone code
  // Serial.print("91");           //international format of phone number //81 for national format
  // Serial.print(newphone_nr);    //now we send the rearranged phone number

  String four = (newphone_nr);
  String five = ("0000AA");

  // Serial.print("0000AA");       //some more parameters
  if (message.length() < 16)
  {
    // Serial.print(0);
  } //now a byte in HEX format indicating the length of the text. Again the byte needs to be made of 2 characters
  // Serial.print(message.length(), HEX);
  String six = String(message.length(), HEX);
  six.toUpperCase();

  String sevenOld;
  String seven;
  String newSeven;
  counter = 0;
  newbyte = 0;
  for (int j = 0; j < message.length(); j++)
  {
    original_byte = message.charAt(j); //one by one we take each byte out of the original text

    for (int i = 0; i < 7; i++)
    {
      newbyte = newbyte | bitRead(original_byte, i) << counter; //take the bits 0 to 6 of the old byte, shift as required for the new byte and add to the new byte
      counter++;
      if (counter == 8)
      {
        counter = 0; //if a new byte is complete, set the counter to 0
        if (newbyte < 16)
        {
          // Serial.print(0);
          // "0" + sevenOld;
          sevenOld = "0" + newSeven;
        }                           //each byte in HEX format should consist of 2 characters, if necessary add 0 in front
        Serial.println(newbyte, HEX); //when the new byte is finished, send it to the mobile phone
        // Serial.print(sevenByte);
        newSeven = String(newbyte, HEX);
        sevenOld = newSeven;
        // newSeven.toUpperCase();
        // Serial.print(newSeven);

        newbyte = 0;                // the next new byte will start again from 0
      }
    }
    seven += sevenOld;
  }
  seven.toUpperCase();

  if (message.length() * 7 % 8 != 0)
  { //if there are remaining bits (not enough to form a new byte), these are sent out as the last byte
    if (newbyte < 16)
    {
      // Serial.print(0);
    } //each byte in HEX format should consist of 2 characters, if necessary add 0 in front
    // Serial.print(newbyte, HEX);
  }
  delay(3000);
  // Serial.write(26); //this is a command telling the mobile phone that the end of the transmission has been reached
  
  String rawMSG1 = smsCMD + CR + one + "0" + two + three + four + five + six + seven;
  Serial.println(rawMSG1);
  rawMSG1.toCharArray(msgToSend1, 250);

  GSMSerial.write("AT\r");
  delay(500);
  updateSerial();

  GSMSerial.write("AT+CMGF=1\r");   
  delay(1000);
  updateSerial();

  rawMSG1.toCharArray(msgToSend1, 250);
  
  GSMSerial.write(msgToSend);
  delay(1000);
  updateSerial();

  GSMSerial.write(26);  //ctrl Z
  updateSerial();
}

/*
  Read input serial
 */
int readSerial(char result[]) {
  int i = 0;
  while (1) {
    while (Serial.available() > 0) {
      char inChar = Serial.read();
      if (inChar == '\n') {
        result[i] = '\0';
        Serial.flush();
        return 0;
      }
      if (inChar != '\r') {
        result[i] = inChar;
        i++;
      }
    }
  }
}