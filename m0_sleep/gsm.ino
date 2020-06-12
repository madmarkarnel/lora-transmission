String tempServer, regServer;

/**
 * @brief Send message to mobile number
 * 
 * @return success: sent, failed: not sent
 */
void send_thru_gsm(char *inputMessage, String serverNumber)
{
  String smsCMD = ("AT+CMGS=");
  String quote = ("\"");
  String CR = ("\r");
  char msgToSend[250];
  char atCmgsNo[250];
  String incomingData = String(inputMessage);
  incomingData.replace("\r", "");
  incomingData.toCharArray(msgToSend, 250);
  String rawMsg = smsCMD + quote + serverNumber + quote + CR;
  rawMsg.toCharArray(atCmgsNo, 250);

  Serial.print("Sending to '");
  Serial.print(serverNumber);
  Serial.print("': ");
  Serial.println(msgToSend);

  GSMSerial.write("AT+CMGF=1\r");
  gsmReadOK();

  for (int i = 0; i < 3; i++)
  {
    gsmSerialFlush();
    GSMSerial.write(atCmgsNo); //AT+CMGS="639XXXXXXXXX"\r
    delay(500);
    if (strstr(readGSMResponse(), ">"))
    {
      GSMSerial.write(msgToSend);
      delay(500);
      GSMSerial.write(26);
      if (readGSMResponse(), "OK")
      {
        Serial.println("Message sent!");
        break;
      }
    }
    else
    {
      Serial.println("Sending message failed!");
      GSMSerial.write(26);  //need to clear pending gsm cmd
      delay(500);
    }
  }
}

void manualGSMcmd()
{
  char cmdAllchar[80];
  String quote = ("\"");
  String CR = ("\r");
  cmdAllchar[0] = '\0';

  Serial.setTimeout(15000);
  Serial.print("Insert GSM command: ");
  String manualCMD = Serial.readStringUntil('\n');
  Serial.println(manualCMD);
  String cmdAll = quote + manualCMD + quote + CR;
  cmdAll.toCharArray(cmdAllchar, sizeof(cmdAllchar));

  GSMSerial.flush();
  GSMSerial.write(cmdAllchar);
  Serial.println(readGSMResponse());
}

/** Over the air commands
 * Parse sms if valid and execute command
 * SENSLOPE,REGISTERNUM, - register mobile number to control MCU, if not it will ignore SMS
 * SENSLOPE,SENSORPOLL, - force data sampling
 * SENSLOPE,SERVERNUMBER,639954645704 - change server number in flash memory
 * SENSLOPE,?SERVERNUM, - check current server number
 * SENSLOPE,?PASSW, - check Password
*/
void process_data(char *data)
{
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
  }
  else if (strncmp(data, get_password_from_flashMem(), 9) == 0)
  {
    Serial.println("Valid PASSWORD received!");
    char *smsCommand = strtok(data + 9, ",");
    char *serverSMS = strtok(NULL, ",");
    Serial.print("Keyword: ");
    Serial.println(smsCommand);
    flashLed(LED_BUILTIN, 2, 60);
    /* input sms command here */
    if (strstr(smsCommand, "SENSORPOLL"))
    {
      if (regServer == tempServer)
      {
        flashLed(LED_BUILTIN, 3, 50);
        get_Due_Data(get_logger_version(), regServer);
      }
    }
    else if (strstr(smsCommand, "REGISTERNUM"))
    {
      flashLed(LED_BUILTIN, 2, 50);
      regServer = "";
      regServer += tempServer;
      Serial.print("Saving this number: ");
      Serial.println(regServer);
      send_thru_gsm("Number Registered!", regServer);
    }
    else if (strstr(smsCommand, "?REGNUM"))
    {
      if (regServer == tempServer)
      {
        char serNum[50];
        flashLed(LED_BUILTIN, 3, 50);
        regServer.toCharArray(serNum, sizeof(serNum));
        Serial.print("Registered Number: ");
        Serial.println(serNum);
      }
    }
    else if (strstr(smsCommand, "?SERVERNUM"))
    {
      if (regServer == tempServer)
      {
        char tempSerNum[50];
        flashLed(LED_BUILTIN, 3, 50);
        Serial.print("Server Number: ");
        Serial.println(get_serverNum_from_flashMem());
        get_serverNum_from_flashMem().toCharArray(tempSerNum, sizeof(tempSerNum));
        send_thru_gsm(tempSerNum, regServer);
      }
    }
    else if (strstr(smsCommand, "SERVERNUMBER"))
    {
      char messageNum[100];
      char newServer[50];
      if (regServer == tempServer)
      {
        flashLed(LED_BUILTIN, 3, 50);
        /* save new server number from remote*/
        strcpy(flashServerNumber.inputNumber, serverSMS);
        newServerNum.write(flashServerNumber);

        get_serverNum_from_flashMem().toCharArray(newServer, sizeof(newServer));

        strncpy(messageNum, "New server number: ", 19);
        strncat(messageNum, newServer, sizeof(newServer));
        Serial.println(messageNum);
        send_thru_gsm(messageNum, tempServer);
      }
    }
    else if (strstr(smsCommand, "?PASSW"))
    {
      if (regServer == tempServer)
      {
        flashLed(LED_BUILTIN, 3, 50);
        Serial.print("Password: ");
        Serial.println(get_password_from_flashMem());
        send_thru_gsm(get_password_from_flashMem(), regServer);
      }
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

char *readGSMResponse()
{
  char response[100]; //200
  int length = sizeof(response);
  response[0] = '\0';

  for (int i = 0; GSMSerial.available() > 0 && i < length; i++)
  {
    response[i] = GSMSerial.read();
  }
  return response;
}

bool gsmReadOK()
{
  for (int i = 0; i < 100; i++) // 50 - 500ms
  {
    if (strstr(readGSMResponse(), "OK"))
    {
      // Serial.println("Read OK from GSM");
      return true;
      break;
    }
    // Serial.print(" .");
    delay(10);
  }
  return false;
}

void gsmSerialFlush()
{
  while (GSMSerial.available() > 0)
  {
    char t = GSMSerial.read();
  }
}

int getCsqStrtok(char *buffer)
{
  char *tmpBuf;
  tmpBuf = strtok(buffer, ": ");
  tmpBuf = strtok(NULL, ",");
  return (atoi(tmpBuf));
}

String getCSQ()
{
  String cCSQval = ("99");
  gsmSerialFlush();
  GSMSerial.write("AT\r");
  delay(500);
  if (gsmReadOK())
  {
    GSMSerial.write("AT+CSQ\r");
    delay(500);
    String nCSQ = String(getCsqStrtok(readGSMResponse()));
    return nCSQ;
  }
  else
  {
    return cCSQval;
  }
}

/*  RING pin
  - normal voltage: 2.7v
  - when SMS received 2.7v , LOW , 2.7v
  - when call pin is 0v, then back after to 2.7 after end call
  *i-connect sa intrrupt pin, mabubuhay if may received na sms
*/
void gsmHangup()
{
  //when ring pin triggers, call this function
  delay(2000);
  GSMSerial.write("ATH\r");
}

void gsmDeleteReadSmsInbox()
{
  GSMSerial.write("AT+CMGD=1,2\r");
  Serial.println(readGSMResponse());
}

/**
 * @brief Check if mobile number network is GLOBE or SMART
 * 
 * @return : SMART: 63908, failed: not sent
 * @default : GLOBE
 */
String simNetwork()
{
  char tNum[50];
  get_serverNum_from_flashMem().toCharArray(tNum, sizeof(tNum));
  if (strstr(tNum, "63908"))
  {
    return "SMART";
  }
  else
  {
    return "GLOBE";
  }  
}

void gsmManualNetworkConnect()
{
  // String simNetwork = "GLOBE"; //or "SMART" , hardcoded
  String simNetCommand = "AT+COPS=1,1,\"" + simNetwork() + "\"\r";
  String response;
  char command[25];
  simNetCommand.toCharArray(command, 25);
  Serial.println(command);

  for (int i = 0; i < 5; i++)
  {
    gsmSerialFlush();
    GSMSerial.write(command);
    delay(1000);
    if (gsmReadOK())
    {
      Serial.println("Command success!");
      break;
    }
    else
    {
      Serial.println("Command failed.");
    }
  }
}

void sleepGSM()
{
  //the module enters sleep mode after 5 seconds of inactivity
  GSMSerial.write("AT+CSCLK=2\r");
  if (gsmReadOK())
  {
    Serial.println("GSM going to sleep!");
  }
}

void wakeGSM()
{
  GSMSerial.write("AT\r");
  gsmReadOK();
  GSMSerial.write("AT+CSCLK=0\r");
  if (gsmReadOK())
  {
    Serial.println("GSM is alive!");
  }
  else
  {
    Serial.println("GSM did NOT wake!");
  }
}

void resetGSM()
{
  int counter = 0;
  Serial.println("GSM resetting . . .");
  digitalWrite(GSMRST, LOW);
  delay(500);
  digitalWrite(GSMRST, HIGH);
  delay(500);
  do
  {
    GSMSerial.write("AT\r");  //gsm initialization
    Serial.println("Sending AT cmd");
  } while ((gsmReadOK() == false));
  Serial.println("GSM ready");
}

void turn_ON_GSM()
{
  digitalWrite(GSMPWR, HIGH);
  Serial.print("Turning ON GSM ");
  delay(5000);
  for (int i = 0; i < 5; i++)
  {
    GSMSerial.write("AT\r");  //gsm initialization
    // if (gsmReadOK())
    // {
    //   Serial.println("GSM connection success!");
    //   break;
    // }
    Serial.print(". ");
    delay(500);
  }
  GSMSerial.write("ATE0\r");  //turn off echo
  gsmReadOK();
  do
  {
    gsmManualNetworkConnect();
  } while (getCSQ() == "99" || getCSQ == 0);
}

void turn_OFF_GSM()
{
  delay(5000);
  digitalWrite(GSMPWR, LOW);
  Serial.println("Turning OFF GSM . . .");
}

/*
String readGSMSerial(int maxResponseTime = 100)
{
  String response;
  int timeout = 0;
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

String getCSQ()
{
  String csqResponse, csqval, atReply;
  int counter = 0;

  GSMSerial.write("AT\r");
  gsmReadOK();
  csqResponse = gsmCommand("AT+CSQ\r");
  if (checkOkError(csqResponse) == 0)
  {
    //Serial.println(csqResponse);
    csqval = csqResponse.substring(csqResponse.indexOf("+CSQ: ") + 6, csqResponse.indexOf(","));
  }
  else
  {
    csqval = ("99");
  }
  return csqval;
}
*/