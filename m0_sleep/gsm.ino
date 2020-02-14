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
  Serial.println(rawMsg);
  rawMsg.toCharArray(atCmgsNo, 250);
  Serial.print("Sending to '");
  Serial.print(get_serverNum_from_flashMem());
  Serial.print("': ");
  Serial.println(msgToSend); //print to send data

  for (int i = 0; i < 3; i++)
  {
    gsmSerialFlush();
    GSMSerial.write(atCmgsNo); //AT+CMGS="639XXXXXXXXX"\r
    reply = readGSMSerial();
    if (isResponse(reply, ">"))
    {
      //Serial.println(atCmgsNo);
    GSMSerial.write(msgToSend); //message to send
    readGSMSerial();
    GSMSerial.write(26); //ctrl Z
    //delay(5000);
    response = readGSMSerial();
    if (checkOkError(response) == 0)
    {
      Serial.println("Message sent!");
      break;
    }
    else
    {
      Serial.println("Sending message failed.");
      Serial.println(response);
    }
    }
    else
      continue;
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
  } while ((checkOkError(atReply) < 0) && (counter++ < 10));

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
  // Serial.println(gsmReadMessage());
  //gsmDeleteReadSmsInbox();
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
    message = ".";
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
  char command[25];
  simNetCommand.toCharArray(command, 25);
  gsmCommand(command);
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

String readGSMSerial()
{
  String response;
  int timeout = 0;
  while (!GSMSerial.available() && timeout < 1000)
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

  case '\n':                   // end of text
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
