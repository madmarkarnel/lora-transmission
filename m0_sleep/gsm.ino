char *readGSMResponse()
{
  char response[200];

  for (int i = 0; GSMSerial.available() > 0 && i < 200; i++)
  {
    response[i] = GSMSerial.read();
  }
  return response;
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
  delay(500);

  String rawMsg = smsCMD + quote + serverNumber + quote + CR;
  rawMsg.toCharArray(atCmgsNo, 250);
  Serial.print("Sending to '");
  Serial.print(get_serverNum_from_flashMem());
  Serial.print("': ");
  Serial.println(msgToSend); //prints data to send  

  for (int i = 0; i < 2; i++)
  {
    GSMSerial.write(atCmgsNo);      //AT+CMGS="639XXXXXXXXX"\r
    delay(500);
    if (strstr(readGSMResponse(), ">"))
    {
      GSMSerial.write(msgToSend);   //message to send
      delay(500);
      GSMSerial.write(26);          //enter
      delay(500);
      if(readGSMResponse(), "OK")
      {
        Serial.println("Message sent!");
        break;
      }
    }
    else
    {
      Serial.println("Sending message failed!");
    }
    delay(500);
  }
}

String getCSQ()
{
  String csqResponse, csqval;

  GSMSerial.write("AT\r");
  delay(500);
  GSMSerial.write("AT+CSQ\r");
  delay(500);
  csqResponse = String(readGSMResponse());
  if(strstr(readGSMResponse(), "OK"))
  {
    csqval = csqResponse.substring(csqResponse.indexOf("+CSQ: ") + 6, csqResponse.indexOf(","));
  }
  else
  {
    csqval = ("99");
  }
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
