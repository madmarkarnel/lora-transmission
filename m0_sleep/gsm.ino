String tempServer;
char serialData[200];

void manualGSMcmd()
{
  char cmdAllchar[250];
  String quote = ("\"");
  String CR = ("\r");

  Serial.setTimeout(15000);
  Serial.print("Insert GSM command: ");
  String manualCMD = Serial.readStringUntil('\n');
  Serial.println(manualCMD);
  String cmdAll = quote + manualCMD + quote + CR;
  cmdAll.toCharArray(cmdAllchar, sizeof(cmdAllchar));
  GSMSerial.write(cmdAllchar);
  // Serial.println(gsmReadReply());
  // Serial.println(readGSMResponse());
  while (GSMSerial.available() > 0)
  {
    processByteReply(GSMSerial.read());
  }
}

/* Pasrse sms if valid and execute command */
void process_data(char *data)
{
  // Serial.println(data);

  // +CMT: "+639161640761","My Number","20/04/29,14:01:35+32"
  if (strncmp(data, "+CMT: \"+", 8) == 0)
  {
    char *mobNum = strtok(data + 8, "\",\""); //\"
    char *name = strtok(NULL, "\",\"");
    char *timeStamp = strtok(NULL, "+");
    tempServer = String(mobNum);
    tempServer.replace(" ", "");

    Serial.print("Sender Number:");
    Serial.println(tempServer);
    /*
    Serial.print("Phone name: ");
    Serial.println(name);
    Serial.print("Timestamp: ");
    Serial.println(timeStamp);
    */
  }
  else if (strncmp(data, "SENSLOPE,", 9) == 0)
  {
    Serial.println("Valid PASSWORD received!");
    char *smsCommand = strtok(data + 9, ",");
    char *timestamp = strtok(NULL, ",");
    Serial.print("Keyword: ");
    Serial.println(smsCommand);
    /* input sms command keyword here */
    if (strstr(smsCommand, "SENSORPOLL"))
    {
      // Serial.println(tempServer);
      // flashLed(LED_BUILTIN, 8, 100);
      digitalWrite(LED_BUILTIN, HIGH);
      send_thru_gsm("LED was turned ON!", "639954645704");
    }
    else if (strstr(smsCommand, "REGISTERNUM"))
    {
      digitalWrite(LED_BUILTIN, LOW);
      send_thru_gsm("LED was turned OFF!", tempServer);
    }
  }
}

/* Read GSM reply; non read blocking process*/
void processIncomingByte(const byte inByte)
{
  const unsigned int MAX_INPUT = 256; // how much serial data we expect before a newline
  static char input_line[MAX_INPUT];
  static unsigned int input_pos = 0;

  switch (inByte)
  {
  case '\n':                   // end of text
    input_line[input_pos] = 0; // terminating null byte

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

/* Read GSM reply; non read blocking process*/
void processByteReply(const byte inByte)
{
  const unsigned int MAX_INPUT = 80; // how much serial data we expect before a newline
  static char input_line[MAX_INPUT];
  static unsigned int input_pos = 0;

  switch (inByte)
  {
  case '\n':                   // end of text
    input_line[input_pos] = 0; // terminating null byte

    // Serial.println(input_line);
    // getCSQval(input_line);
    printReply(input_line);

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
}

void printReply(char *buff)
{
  Serial.println(buff);
}

char *readGSMResponse()
{
  char response[200];
  int length = sizeof(response);
  response[0] = '\0';

  for (int i = 0; GSMSerial.available() > 0 && i < length; i++)
  {
    response[i] = GSMSerial.read();
  }
  return response;
}

void gsmReadOK()
{
  for (int i = 0; i < 50; i++)
  {
    if (strstr(readGSMResponse(), "OK"))
    {
      // Serial.println("Read OK");
      break;
    }
    // Serial.print(" .");
    delay(10);
  }
}

String readGSMSerial(int maxResponseTime = 500)
{
  String response;
  int timeout = 0; // ~5 seconds
  while (!GSMSerial.available() && timeout < maxResponseTime)
  {
    delay(10);
    timeout++;
  }
  if (GSMSerial.available())
  {
    response = GSMSerial.readString();
  }
  return response;
}

/**
 * @brief Send message to mobile number
 * 
 * @return success: sent, failed: not sent
 */
void send_thru_gsm(char *inputMessage, String serverNumber)
{
  char msgToSend[250];
  char atCmgsNo[250];
  String incomingData = String(inputMessage);
  incomingData.replace("\r", "");
  incomingData.toCharArray(msgToSend, 250);

  String smsCMD = ("AT+CMGS=");
  String quote = ("\"");
  String CR = ("\r");
  String response;
  String reply;

  GSMSerial.write("AT+CMGF=1\r");
  // gsmReadOK();
  delay(500);

  String rawMsg = smsCMD + quote + serverNumber + quote + CR;
  rawMsg.toCharArray(atCmgsNo, 250);
  Serial.print("Sending to '");
  Serial.print(serverNumber);
  Serial.print("': ");
  Serial.println(msgToSend); //prints data to send

  for (int i = 0; i < 2; i++)
  {
    // gsmSerialFlush();
    GSMSerial.write(atCmgsNo); //AT+CMGS="639XXXXXXXXX"\r
    delay(500);
    if (strstr(readGSMResponse(), ">"))
    {
      GSMSerial.write(msgToSend); //message to send
      delay(500);
      GSMSerial.write(26); //enter
      delay(500);
      if (readGSMResponse(), "OK")
      {
        Serial.println("Message sent!");
        break;
      }
    }
    else
    {
      Serial.println("Sending message failed!");
    }
  }
}

//*buffer="AT+CSQ: 12,0" expected  buffer format
void getCSQval(char *buffer)
{
  // if (strncmp(buffer, "AT+CSQ: ", 8) == 0)
  // {
  //   char *csqN = strtok(buffer + 8, ",");
  //   Serial.println(csqN);
  // }
  // /*
  char csqval[10];
  String csqOut;
  char *tmpBuf;

  tmpBuf = strtok(buffer, ": ");
  tmpBuf = strtok(NULL, ",");

  csqOut = String(tmpBuf);
  csqOut.replace(" ", "");
  csqOut.toCharArray(csqval, 10);

  Serial.print("CSQ: ");
  Serial.println(csqval);
  // return csqval;
  // */
}

String getCSQ()
{
  String csqResponse, csqval, atReply;
  int counter = 0;

  do
  {
    atReply = gsmCommand("AT\r");
    //Serial.println("AT");
  } while ((checkOkError(atReply) < 0) && (counter++ < 5));

  csqResponse = gsmCommand("AT+CSQ\r");
  if (checkOkError(csqResponse) == 0)
  {
    //Serial.println(csqResponse);
    csqval = csqResponse.substring(csqResponse.indexOf("+CSQ: ") + 6, csqResponse.indexOf(","));
  }
  else
  {
    csqval = '99';
  }
/*
  GSMSerial.write("AT\r");
  gsmReadOK();
  GSMSerial.write("AT+CSQ\r");
  gsmReadOK();
  csqResponse = String(readGSMResponse());
  if (strstr(readGSMResponse(), "OK"))
  {
    csqval = csqResponse.substring(csqResponse.indexOf("+CSQ: ") + 6, csqResponse.indexOf(","));
  }
  else
  {
    csqval = ("99");
  }
  */
  return csqval;
}

void gsmHangup()
{
  //when ring pin triggers, call this function
  delay(2000);
  gsmCommand("ATH\r");
}

String gsmReadMessage()
{
  String response;
  String message;
  char str[1000];
  int i = 0;

  response = gsmCommand("AT+CMGR=1\r");
  response.toCharArray(str, 1000);

  char *token = strtok(str, "\r");
  while (token != NULL)
  {
    if (i == 2) //third entry
    {
      message = token;
      break;
    }
    token = strtok(NULL, "\r");
    i++;
  }

  if (isResponse(message, "password"))
  {
    Serial.println("Valid message received.");
  }
  else
  {
    Serial.println("No valid message received.");
    message = (".");
  }

  return message;
}

void gsmDeleteReadSmsInbox()
{
  gsmCommand("AT+CMGD=1,2\r");
  Serial.println(readGSMResponse());
}

void gsmManualNetworkConnect()
{
  String simNetwork = "GLOBE"; //or "SMART" , hardcoded
  String simNetCommand = "AT+COPS=1,1,\"" + simNetwork + "\"\r";
  String response;
  char command[25];
  simNetCommand.toCharArray(command, 25);
  gsmSerialFlush();
  GSMSerial.write(command);
  response = readGSMSerial(3000);
  if (checkOkError(response) == 0)
  {
    Serial.println("OK received.");
  }
  else
  {
    Serial.println("Command failed.");
    Serial.println(response);
  }
}

int checkOkError(String response)
{
  if (isResponse(response, "OK"))
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
  response = readGSMSerial();
  return response;
}

void gsmSerialFlush()
{
  while (GSMSerial.available() > 0)
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
  String response;
  response = gsmCommand("AT+CSCLK=2\r");
  if (checkOkError(response) == 0)
  {
    Serial.println("GSM going to sleep!");
  }
}

void wakeGSM()
{
  String response;
  gsmCommand("AT\r");
  response = gsmCommand("AT+CSCLK=0\r");
  if (checkOkError(response) == 0)
  {
    Serial.println("GSM is alive!");
  }
}

/*  RING pin
  - normal voltage: 2.7v
  - when SMS received 2.7v , LOW , 2.7v
  - when call pin is 0v, then back after to 2.7 after end call
  *i-connect sa intrrupt pin, mabubuhay if may received na sms
*/

int readline(int readch, char *buffer, int len)
{
  static int pos = 0;
  int rpos;

  if (readch > 0)
  {
    switch (readch)
    {
    case '\r': // Ignore CR
      break;
    case '\n': // Return on new-line
      rpos = pos;
      pos = 0; // Reset position index ready for next time
      return rpos;
    default:
      if (pos < len - 1)
      {
        buffer[pos++] = readch;
        buffer[pos] = 0;
      }
    }
  }
  return 0;
}

char *gsmReadReply()
{
  serialData[0] = '\0';

  while (GSMSerial.available() > 0)
  {
    if (readline(GSMSerial.read(), serialData, sizeof(serialData)) > 0)
    {
      // Serial.println(serialData);
      return serialData;
      break;
    }
  }
}