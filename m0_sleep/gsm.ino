void send_thru_gsm(char *inputMessage, char *serverNumber)
{
    char msgToSend[250];
    int maxPhoneNum = 15;
    char sendingNumber[15];

    String smsCMD = ("AT+CMGS=");
    String quote = ("\"");
    String CR = ("\r");
    String response;

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

    GSMSerial.write("AT+CMGF=1\r");
    delay(500);

    String rawMsg = smsCMD + quote + serverNumber + quote + CR;
    rawMsg.toCharArray(msgToSend, 250);
    strncat(msgToSend, inputMessage, 168);
    Serial.print("Sending to '");
    Serial.print(get_serverNum_from_flashMem());
    Serial.print("': ");
    Serial.println(inputMessage);  //print to send data

    for (int i =0; i<3; i++)
    {
      gsmSerialFlush();
      GSMSerial.write(msgToSend);
      delay(500);
      GSMSerial.write(26); //ctrl Z
      delay(500);
      while (GSMSerial.available())
      {
        response += GSMSerial.readString();
      }
      if (checkOkError(response) == 0)
      {
        Serial.println("Message sent!");
        break;
      }
      else
      {
        Serial.println("Sending message failed.");
      }
    }
}

String getCSQ()
{
  String csqResponse;
  String atReply;
  String csqval;
  int counter = 0;
  
  do
  {
    atReply = gsmCommand("AT\r");
    //Serial.println("AT");
  }
  while ((checkOkError(atReply) < 0) && (counter++ < 10));
  
  csqResponse = gsmCommand("AT+CSQ\r");
  if (checkOkError(csqResponse) == 0)
  {
    //Serial.println(csqResponse);
    csqval = csqResponse.substring(csqResponse.indexOf("+CSQ: ")+6, csqResponse.indexOf(","));
  }
  else
  {
    csqval = '99';
  }
  return csqval;  
}

void gsmHangup()
{
  //when ring pin triggers, call this function
  delay(2000);
  gsmCommand("ATH\r");
}

void gsmDeleteReadSmsInbox()
{
  gsmCommand("AT+CMGD=1,2");
}

void gsmManualNetworkConnect()
{
  String simNetwork = "GLOBE"; //or "SMART" , hardcoded
  String simNetCommand = "AT+COPS=1,1,\"" + simNetwork + "\"\r";
  char command[25];
  simNetCommand.toCharArray(command, 25);
  gsmCommand(command);
}

int checkOkError(String response)
{
  if (isResponse(response,"OK"))
  {
    //Serial.println("OK received!");
    return 0;
  }
  else if (isResponse(response, "ERROR"))
  {
    Serial.println("ERROR received!");
    return -1;
  }
  else
  {
    return -2;
  }
}

bool isResponse(String response, String keyword)
{
  if (response.indexOf(keyword) != -1)
  {
    return true;
  }
  else
  {
    return false;
  }
}

String gsmCommand(char *command)
{
  String response;
  gsmSerialFlush();
  GSMSerial.write(command);
  delay(1000);
  while (GSMSerial.available())
  {
    response += GSMSerial.readString();
  }
  //checkOkError(response);
  return response;
}

void gsmSerialFlush()
{
  while(GSMSerial.available() > 0)
  {
    char t = GSMSerial.read();
  }
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
    // delay(1000);
    GSMSerial.write("AT\r");
    delay(50);
    //disable sleep mode
    GSMSerial.write("AT+CSCLK=0\r");
    delay(500);
    Serial.println("GSM is alive!");
}

// here to process incoming serial data after a terminator received
void process_data(const char *data)
{
    // for now just display it
    // (but you could compare it to some value, convert to an integer, etc.)
    Serial.println(data);
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
