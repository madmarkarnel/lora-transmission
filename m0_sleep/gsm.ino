/*
if (readline(Serial.read(), buf, 80) > 0) {
    Serial.print("You entered: >");
    Serial.print(buf);
    Serial.println("<");
}
*/

void sendMessage(char *inputMessage, char *serverNumber)
{
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

    // GSMSerial.write("AT\r");
    // delay(500);

    GSMSerial.write("AT+CMGF=1\r");
    delay(500);

    String rawMsg = smsCMD + quote + serverNumber + quote + CR;
    rawMsg.toCharArray(msgToSend, 250);
    strncat(msgToSend, inputMessage, 168);

    GSMSerial.write(msgToSend);
    delay(500);

    GSMSerial.write(26); //ctrl Z
    // updateSerial();
}

void getCSQ()
{
    GSMSerial.write("AT+CSQ\r");
    delay(100);
    String csqstr = GSMSerial.readString();
    char csq[100];
    char csqval[20];
    csqstr.toCharArray(csq,100);
    MatchState ms(csq);
    char result = ms.Match("[0-9]+");
    if (result == REGEXP_MATCHED)
    {
    Serial.print ("CSQ = ");
    Serial.println (ms.GetMatch(csqval));
    }
    else
    Serial.println(csq);
}

void updateSerial()
{
    delay(500);
    while (Serial.available())
    {
        GSMSerial.write(Serial.read()); //Forward what Serial received to Software Serial Port
    }
    while (GSMSerial.available())
    {
        Serial.write(GSMSerial.read()); //Forward what Software Serial received to Serial Port
    }
}

void sleepGSM()
{
    //the module enters sleep mode after 5 seconds of inactivity
    GSMSerial.write("AT+CSCLK=2\r");
    delay(50);
    // updateSerial();
    Serial.println("GSM going to sleep!");
}

void wakeGSM()
{
    delay(1000);
    GSMSerial.write("AT\r");
    delay(50);
    //disable sleep mode
    GSMSerial.write("AT+CSCLK=0\r");
    delay(500);
    // updateSerial();
    Serial.write("GSM is alive!");
}
