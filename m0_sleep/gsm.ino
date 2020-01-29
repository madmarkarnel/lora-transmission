/*
if (readline(Serial.read(), buf, 80) > 0) {
    Serial.print("You entered: >");
    Serial.print(buf);
    Serial.println("<");
}
*/

void send_thru_gsm(char *inputMessage, char *serverNumber)
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


String getCSQ()
{
    char errorValue[2] = "0";
    char csq[100];
    char csqval[20];

    GSMSerial.write("AT+CSQ\r");
    delay(100);
    String csqstr = GSMSerial.readString();
    csqstr.toCharArray(csq, 100);
    //Serial.println(csq);
    MatchState ms(csq);
    MatchState ok_ms(csq);
    MatchState error_ms(csq);
    char result = ms.Match("[0-9]+");
    char ok_result = ok_ms.Match("OK");
    char error_result = error_ms.Match("ERROR");

    if (ok_result == REGEXP_MATCHED)
    {
       Serial.println("OK received");
    }
    if (error_result == REGEXP_MATCHED)
    {
       Serial.println("ERROR received");
    }
    
    if (result == REGEXP_MATCHED)
    {
        // Serial.print ("CSQ: ");
        // Serial.println (ms.GetMatch(csqval));
        return (ms.GetMatch(csqval));
    }
    else
    {
        // Serial.println(csq);
        return (errorValue);
    }
}


// void getCSQ()
// {
//     int i = 0;
//     GSMSerial.write("AT+CSQ\r");
//     delay(100);

//     // if serial data available, process it
//     while (GSMSerial.available() > 0)
//         processIncomingByte(GSMSerial.read());
// }

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

// here to process incoming serial data after a terminator received
void process_data(const char *data)
{
    // for now just display it
    // (but you could compare it to some value, convert to an integer, etc.)
    // Serial.println(data);

    String gsmReply(data); //convert char* data to string
    char buff[168];
    gsmReply.toCharArray(buff, 168);

    /**
     * from :+CSQ: 31,0
     * to : +CSQ:\031,0
    */
    char *parseReply = strtok(buff, " ");
    while (parseReply)
    {
        if (strncmp(parseReply, "+CSQ:", 5))
        {
            Serial.println(parseReply);
        }
        // else if (strncmp(parseReply, ",", 3) == 0)
        // {
        //     Serial.println(parseReply);
        // }
        parseReply = strtok(NULL, ","); // Note: NULL, not IncomingString
    }
    

/*    
    char *parseReply;
    parseReply = strtok(buff, ":");
    while (parseReply != NULL)
    {
        char *one, *two;
        Serial.println(parseReply);
        // one = strtok(buff, ",");
        // Serial.println(one);
        // two = strtok(buff, " ");
        // Serial.println(two);
        parseReply = strtok(NULL, ",");
    }

    char *parseReply, *sav1 = NULL;
    parseReply = strtok_r(buff, ":", &sav1);

    while (parseReply != NULL)
    {
        char *keyWord;
        char *allReply;
        char *sav2 = NULL;
        allReply = strtok_r(parseReply, ",", &sav2);
        Serial.println(allReply);

        if (!strcmp(keyWord, "OK"))
        {
            Serial.println("OK from gsm");
        }

        parseReply = strtok_r(NULL, ":", &sav1);
    }
*/
} // end of process_data

void processIncomingByte(const byte inByte)
{
    static char input_line[MAX_INPUT];
    static unsigned int input_pos = 0;

    switch (inByte)
    {

    case '\n':                     // end of text
        input_line[input_pos] = 0; // terminating null byte

        // terminator reached! process input_line here ...
        process_data(input_line);

        // reset buffer for next time
        input_pos = 0;
        break;

    case '\r': // discard carriage return
        break;

    default:
        // keep adding if not full ... allow for terminating null byte
        if (input_pos < (MAX_INPUT - 1))
            input_line[input_pos++] = inByte;
        break;

    } // end of switch

} // end of processIncomingByte
