#define ATCMD "AT"
#define ATECMDTRUE "ATE"
#define ATECMDFALSE "ATE0"
#define OKSTR "OK"
#define ERRORSTR "ERROR"

bool ate = false;

void getAtcommand()
{
  // wakeGSM();
  String serial_line, command;
  int i_equals = 0;

  do
  {
    serial_line = Serial.readStringUntil('\r\n');
  } while (serial_line == "");
  serial_line.toUpperCase();
  serial_line.replace("\r", "");

  // echo command if ate is set, default true
  if (ate)
    Serial.println(serial_line);

  // get characters before '='
  i_equals = serial_line.indexOf('=');
  if (i_equals == -1)
    command = serial_line;
  else
    command = serial_line.substring(0, i_equals);

  if (command == ATCMD)
    Serial.println(OKSTR);
  else if (command == ATECMDTRUE)
  {
    ate = true;
    Serial.println(OKSTR);
  }
  else if (command == ATECMDFALSE)
  {
    ate = false;
    Serial.println(OKSTR);
  }
  else if (command == "A")
  {
    // turn_ON_GSM();
    get_Due_Data(get_logger_version(), get_serverNum_from_flashMem());
    // turn_OFF_GSM();
  }
  else if (command == "B")
  {
    Serial.print("RTC temperature: ");
    Serial.println(readTemp());
  }
  else if (command == "C")
  {
    printMenu();
  }
  else if (command == "D")
  {
    if (alarmFromFlashMem() == 0)
    {
      Serial.println("Alarm every 00 and 30 minutes.");
    }
    else if (alarmFromFlashMem() == 1)
    {
      Serial.println("Alarm every 05 and 35 minutes.");
    }
    else if (alarmFromFlashMem() == 2)
    {
      Serial.println("Alarm every 10 and 40 minutes.");
    }
    else if (alarmFromFlashMem() == 3)
    {
      Serial.println("Alarm every 15 and 45 minutes.");
    }
    else if (alarmFromFlashMem() == 4)
    {
      Serial.println("Alarm every 10 minutes.");
    }
    else if (alarmFromFlashMem() == 5)
    {
      Serial.println("Alarm every 5,15,25. . . minutes.");
    }
    if (isChangeParam())
      setAlarmInterval();
    Serial.readStringUntil('\r\n');
  }
  else if (command == "E")
  {
    // sleepGSM();
    Serial.println("Exiting debug mode!");
    //real time clock alarm settings
    setAlarmEvery30(alarmFromFlashMem());
    delay(75);
    rtc.clearINTStatus(); // needed to re-trigger rtc
    debug_flag = 0;
    turn_OFF_GSM();
  }
  else if (command == "F")
  {
    Serial.print("Server Number: ");
    Serial.println(get_serverNum_from_flashMem());
    if (isChangeParam())
      changeServerNumber();
  }
  else if (command == "G")
  {
    //print voltage
    Serial.print("Voltage: ");
    Serial.println(BatteryVoltage(get_logger_version()));
    Serial.println(read_batt_vol(get_logger_version()));
  }
  else if (command == "H")
  {
    /*
    readTimeStamp();
    char testMsg[200] = "SENSLOPE,SENSORPOLL";
    strncat(testMsg, ",", 1);
    strncat(testMsg, Ctimestamp, 168);
    send_thru_gsm(testMsg, get_serverNum_from_flashMem());
    testMsg[0] = '\0';
    */
    Serial.println("A");
    delay(1000);
    Serial.println("Resetting MCU Programatically!");
    resetFunc();
    Serial.println("MCU will never reach here!");
  }
  else if (command == "I")
  {
    //check gsm response
    // GSMSerial.write("AT\r");
    // gsmReadOK();
    // GSMSerial.write("AT+CSQ\r");
    // gsmReadOK();
    // getCSQval(readGSMResponse());
    GSMSerial.write("AT+CNMI=1,2,0,0,0\r");
    while (GSMSerial.available() > 0)
    {
      processIncomingByte(GSMSerial.read());
    }
  }
  else if (command == "J")
  {
    Serial.print("Logger version: ");
    Serial.println(get_logger_version());
    if (isChangeParam())
      setLoggerVersion();
    Serial.readStringUntil('\r\n');
  }
  else if (command == "K")
  {
    Serial.print("Password: ");
    Serial.println(get_password_from_flashMem());
    if (isChangeParam())
      changePassword();
    Serial.readStringUntil('\r\n');
  }
  else if (command == "L")
  {
    // build_message(0);
    // send_thru_gsm(dataToSend, get_serverNum_from_flashMem());

    manualGSMcmd();
  }
  else if (command == "M")
  {
    send_rain_data(1);
  }
  else if (command == "N")
  {
    if (get_logger_version() == 1)
    {
      Serial.print("Gateway sensor name: ");
      Serial.println(get_logger_A_from_flashMem());
      Serial.print("Remote sensor name: ");
      Serial.println(get_logger_B_from_flashMem());
    }
    else if (get_logger_version() == 3)
    {
      Serial.print("Gateway name: ");
      Serial.println(get_logger_A_from_flashMem());
      Serial.print("Sensor Name A: ");
      Serial.println(get_logger_B_from_flashMem());
    }
    else if (get_logger_version() == 4)
    {
      Serial.print("Gateway name: ");
      Serial.println(get_logger_A_from_flashMem());
      Serial.print("Sensor Name A: ");
      Serial.println(get_logger_B_from_flashMem());
      Serial.print("Sensor Name B: ");
      Serial.println(get_logger_C_from_flashMem());
    }
    else if (get_logger_version() == 5)
    {
      Serial.print("Gateway name: ");
      Serial.println(get_logger_A_from_flashMem());
      Serial.print("Sensor Name A: ");
      Serial.println(get_logger_B_from_flashMem());
      Serial.print("Sensor Name B: ");
      Serial.println(get_logger_C_from_flashMem());
      Serial.print("Sensor Name C: ");
      Serial.println(get_logger_D_from_flashMem());
    }
    else
    { // 2; 6; 7
      Serial.print("Gateway sensor name: ");
      Serial.println(get_logger_A_from_flashMem());
      // Serial.print("Remote sensor name: ");
      // Serial.println(get_logger_B_from_flashMem());
    }
    // Serial.print("Sensor Name A: ");
    // Serial.println(get_logger_A_from_flashMem());
    // Serial.print("Sensor Name B: ");
    // Serial.println(get_logger_B_from_flashMem());
    // Serial.print("Sensor Name C: ");
    // Serial.println(get_logger_C_from_flashMem());
    // Serial.print("Sensor Name D: ");
    // Serial.println(get_logger_D_from_flashMem());

    if (isChangeParam())
      inputLoggerNames();
    Serial.readStringUntil('\r\n');
  }
  else if (command == "O")
  {
    Serial.print("CSQ: ");
    Serial.println(getCSQ());
  }
  else if (command == "P")
  {
    Serial.print("Rain tips: ");
    Serial.println(rainTips);
    delay(20);
    resetRainTips();
    // attachInterrupt(digitalPinToInterrupt(RAININT), rainISR, FALLING);
  }
  else if (command == "Q")
  {
    resetRainTips();
  }
  else if (command == "R")
  {
    resetGSM();
    // readTimeStamp();
    // Serial.print("Timestamp: ");
    // Serial.println(Ctimestamp);
  }
  else if (command == "S")
  {
    readTimeStamp();
    Serial.print("Timestamp: ");
    Serial.println(Ctimestamp);
    if (isChangeParam())
      setupTime();
  }
  else if (command == "T")
  {
    Serial.println("MADTB*VOLT:12.33*200214111000");
    char toParse[200];
    Serial.setTimeout(15000);
    Serial.println("Insert data to be parsed: ");
    String fromUser = Serial.readStringUntil('\n');
    fromUser.toCharArray(toParse, 200);
    // Serial.print("Parsed data: ");
    // Serial.println(parse_voltage(toParse));
    // strncpy(txVoltage, parse_voltage(toParse), sizeof(parse_voltage(toParse)));
    parse_voltage(toParse).toCharArray(txVoltage, sizeof(txVoltage));
    Serial.print("Volt: ");
    Serial.println(txVoltage);
    Serial.print("Volt: ");
    Serial.println(txVoltageB);
    Serial.print("Volt: ");
    Serial.println(txVoltageC);
    get_rssi(5);
  }
  else if (command == "U")
  {
    turn_ON_GSM();
    Serial.println("sending rain gauge data . . .");
    send_rain_data(0);
    get_rssi(get_logger_version());
    turn_OFF_GSM();
  }
  else if (command == "V")
  {
    // sleepGSM();
    turn_OFF_GSM();
  }
  else if (command == "W")
  {
    // wakeGSM();
    turn_ON_GSM();
  }
  else if (command == "X")
  {
    Serial.print("Datalogger Version: ");
    Serial.println(get_logger_version());
    Serial.println("waiting fo LoRa data. . .");
    receive_lora_data(get_logger_version());
  }
  else if (command == "Y")
  {
    // test
    char specialMsg[200];
    Serial.setTimeout(20000);
    Serial.print("Enter message to send: ");
    String gsmCmd = Serial.readStringUntil('\n');
    Serial.println(gsmCmd);
    gsmCmd.toCharArray(specialMsg, sizeof(specialMsg));
    send_thru_gsm(specialMsg, get_serverNum_from_flashMem());
  }
  else if (command == "Z")
  {
    //do something
    Serial.print("Current command: ");
    sensCommand = passCommand.read();
    Serial.println(sensCommand.senslopeCommand);
    // Serial.print("Sensor Name: ");
    // Serial.println(sensCommand.stationName);
    if (isChangeParam())
      changeSensCommand();
    Serial.readStringUntil('\r\n');
  }
  else
  {
    Serial.println("Command invalid!");
  }
}

void printMenu()
{
  Serial.println(F("-----------------------------------------------"));
  Serial.println(F("[A] Sample sensor data"));
  Serial.println(F("[B] Read RTC temperature."));
  Serial.println(F("[C] Print this menu"));
  Serial.println(F("[D] Change LoRa sending time."));
  Serial.println(F("[E] Exit Debug mode."));
  Serial.println(F("[F] Change 'server number' from flash memory"));
  Serial.println(F("[G] Print input voltage"));
  Serial.println(F("[H] Reset MCU programmatically"));
  Serial.println(F("[I] GSM receive SMS test"));
  Serial.println(F("[J] Change logger version from flash memory"));
  Serial.println(F("[K] Change MCU password"));
  Serial.println(F("[L] Manual GSM commands"));
  Serial.println(F("[M] Special sending rain data via LoRa"));
  Serial.println(F("[N] Change datalogger names from memory."));
  Serial.println(F("[O] Read GSM CSQ."));
  Serial.println(F("[P] Read rain gauge tip."));
  Serial.println(F("[Q] Reset rain tips."));
  Serial.println(F("[R] Reset GSM"));
  Serial.println(F("[S] Set date and time."));
  Serial.println(F("[T] Parse voltage from remote logger."));
  Serial.println(F("[U] Send rain tips."));
  Serial.println(F("[V] Sleep GSM"));
  Serial.println(F("[W] Wake GSM"));
  Serial.println(F("[X] wait for Lora data"));
  Serial.println(F("[Y] Send SMS"));
  Serial.println(F("[Z] Change SENSLOPE command."));
  Serial.println(F("-----------------------------------------------"));
}

void print_rtcInterval()
{
  Serial.print("Alarm interval every: ");
  Serial.println(store_rtc);
  Serial.println("------------------------------------------------");
  Serial.println("Enter alarm settings:");
  Serial.println("[0] Alarm for every 0 and 30 minutes interval");
  Serial.println("[1] Alarm for every 5 and 35 minutes interval");
  Serial.println("[2] Alarm for every 10 and 40 minutes interval");
  Serial.println("[3] Alarm for every 15 and 45 minutes interval");
  Serial.println("[4] Alarm for every 10 minutes interval");
  Serial.println("[5] Alarm for every 5,15,25. . .  minutes interval");
  Serial.println("------------------------------------------------");
}

void setLoggerVersion()
{
  int version;
  Serial.println("[0] Sendng data using GSM only");                //arQ like function only
  Serial.println("[1] Version 5 datalogger LoRa with GSM");        //arQ + LoRa rx
  Serial.println("[2] LoRa transmitter for version 5 datalogger"); //TX LoRa
  Serial.println("[3] Gateway Mode with only ONE LoRa transmitter");
  Serial.println("[4] Gateway Mode with TWO LoRa transmitter");
  Serial.println("[5] Gateway Mode with THREE LoRa transmitter");
  Serial.println("[6] LoRa transmitter for Raspberry Pi"); //TX LoRa
  Serial.println("[7] Sends rain gauge data via LoRa");    //TX LoRa
  Serial.println("[8] LoRa dummy transmitter");    //TX LoRa
  delay(1000);
  while (!Serial.available())
  {
  }
  if (Serial.available())
  {
    Serial.setTimeout(8000);
    version = Serial.parseInt();
    Serial.print("INPUT = ");
    Serial.println(version);
  }
  delay(50);
  loggerVersion.write(version);
}

uint8_t get_logger_version()
{
  int lversion = loggerVersion.read();
  return lversion;
}

void setAlarmInterval()
{
  int alarmSelect;
  print_rtcInterval();
  delay(1000);
  while (!Serial.available())
  {
  }
  if (Serial.available())
  {
    Serial.setTimeout(8000);
    alarmSelect = Serial.parseInt();
    Serial.print("From user = ");
    Serial.println(alarmSelect);
  }
  // alarm_setting = alarmSelect;
  // setAlarmEvery30(alarm_setting);
  delay(50);
  alarmStorage.write(alarmSelect);
  delay(50);
}

uint8_t alarmFromFlashMem()
{
  int fromAlarmStorage;
  fromAlarmStorage = alarmStorage.read();
  return fromAlarmStorage;
}

void changeSensCommand()
{
  Serial.setTimeout(15000);
  Serial.print("Insert DUE command: ");
  String dynaCommand = Serial.readStringUntil('\n');
  Serial.println(dynaCommand);
  // Serial.print("Insert sensor name: ");
  // String sensorName = Serial.readStringUntil('\n');
  // Serial.println(sensorName);
  dynaCommand.toCharArray(sensCommand.senslopeCommand, 50);
  // sensorName.toCharArray(sensCommand.stationName, 10);
  passCommand.write(sensCommand); //save to flash memory
}

void inputLoggerNames()
{
  Serial.setTimeout(20000);
  if (get_logger_version() == 1)
  {
    Serial.print("Input name of gateway SENSOR: ");
    String inputLoggerA = Serial.readStringUntil('\n');
    Serial.println(inputLoggerA);
    Serial.print("Input name of remote SENSOR: ");
    String inputLoggerB = Serial.readStringUntil('\n');
    Serial.println(inputLoggerB);
    inputLoggerA.toCharArray(loggerName.sensorA, 10);
    inputLoggerB.toCharArray(loggerName.sensorB, 10);
    flashLoggerName.write(loggerName);
  }
  else if (get_logger_version() == 3)
  {
    Serial.print("Input name of GATEWAY: ");
    String inputLoggerA = Serial.readStringUntil('\n');
    Serial.println(inputLoggerA);
    Serial.print("Input name of remote SENSOR: ");
    String inputLoggerB = Serial.readStringUntil('\n');
    Serial.println(inputLoggerB);
    inputLoggerA.toCharArray(loggerName.sensorA, 10);
    inputLoggerB.toCharArray(loggerName.sensorB, 10);
    flashLoggerName.write(loggerName);
  }
  else if (get_logger_version() == 4)
  {
    Serial.print("Input name of GATEWAY: ");
    String inputLoggerA = Serial.readStringUntil('\n');
    Serial.println(inputLoggerA);
    Serial.print("Input name of remote SENSOR A: ");
    String inputLoggerB = Serial.readStringUntil('\n');
    Serial.println(inputLoggerB);
    Serial.print("Input name of remote SENSOR B: ");
    String inputLoggerC = Serial.readStringUntil('\n');
    Serial.println(inputLoggerC);
    inputLoggerA.toCharArray(loggerName.sensorA, 10);
    inputLoggerB.toCharArray(loggerName.sensorB, 10);
    inputLoggerC.toCharArray(loggerName.sensorC, 10);
    flashLoggerName.write(loggerName);
  }
  else if (get_logger_version() == 5)
  {
    Serial.print("Input name of GATEWAY: ");
    String inputLoggerA = Serial.readStringUntil('\n');
    Serial.println(inputLoggerA);
    Serial.print("Input name of remote SENSOR A: ");
    String inputLoggerB = Serial.readStringUntil('\n');
    Serial.println(inputLoggerB);
    Serial.print("Input name of remote SENSOR B: ");
    String inputLoggerC = Serial.readStringUntil('\n');
    Serial.println(inputLoggerC);
    Serial.print("Input name of remote SENSOR C: ");
    String inputLoggerD = Serial.readStringUntil('\n');
    Serial.println(inputLoggerD);
    inputLoggerA.toCharArray(loggerName.sensorA, 10);
    inputLoggerB.toCharArray(loggerName.sensorB, 10);
    inputLoggerC.toCharArray(loggerName.sensorC, 10);
    inputLoggerD.toCharArray(loggerName.sensorD, 10);
    flashLoggerName.write(loggerName);
  }
  else
  {
    /*
    Serial.print("Input name of gateway SENSOR: ");
    String inputLoggerA = Serial.readStringUntil('\n');
    Serial.println(inputLoggerA);
    // Serial.print("Input name of SENSOR B: ");
    // String inputLoggerB = Serial.readStringUntil('\n');
    // Serial.println(inputLoggerB);
    // Serial.print("Input name of SENSOR C: ");
    // String inputLoggerC = Serial.readStringUntil('\n');
    // Serial.println(inputLoggerC);
    // Serial.print("Input name of SENSOR D: ");
    // String inputLoggerD = Serial.readStringUntil('\n');
    // Serial.println(inputLoggerD);
    inputLoggerA.toCharArray(loggerName.sensorA, 10);
    // inputLoggerB.toCharArray(loggerName.sensorB, 10);
    // inputLoggerC.toCharArray(loggerName.sensorC, 10);
    // inputLoggerD.toCharArray(loggerName.sensorD, 10);
    flashLoggerName.write(loggerName);
    */
    Serial.print("Input name of SENSOR: ");
    String inputLoggerA = Serial.readStringUntil('\n');
    Serial.println(inputLoggerA);
    // Serial.print("Input name of remote SENSOR: ");
    // String inputLoggerB = Serial.readStringUntil('\n');
    // Serial.println(inputLoggerB);
    inputLoggerA.toCharArray(loggerName.sensorA, 10);
    // inputLoggerB.toCharArray(loggerName.sensorB, 10);
    flashLoggerName.write(loggerName);
  }
}

void changeServerNumber()
{
  Serial.setTimeout(15000);
  Serial.println("Insert server number GLOBE - 639175972526 ; SMART - 639088125642");
  String ser_num = Serial.readStringUntil('\n');
  ser_num.toCharArray(flashServerNumber.inputNumber, 50);
  newServerNum.write(flashServerNumber); //save to flash memory
}

void changePassword()
{
  Serial.setTimeout(15000);
  String inPass = Serial.readStringUntil('\n');
  inPass += ",";
  inPass.toCharArray(flashPassword.keyword, 50);
  flashPasswordIn.write(flashPassword);
}

void setupTime()
{
  int MM = 0, DD = 0, YY = 0, hh = 0, mm = 0, ss = 0, dd = 0;
  //Serial.println(F("\nSet time and date in this format: YY,MM,DD,hh,mm,ss,dd[0-6]Mon-Sun"));
  // delay(10);
  while (!Serial.available())
  {
  }
  if (Serial.available())
  {
    YY = Serial.parseInt();
    MM = Serial.parseInt();
    DD = Serial.parseInt();
    hh = Serial.parseInt();
    mm = Serial.parseInt();
    ss = Serial.parseInt();
    dd = Serial.parseInt();
  }
  delay(10);
  adjustDate(YY, MM, DD, hh, mm, ss, dd);
  readTimeStamp();
  Serial.println(Ctimestamp);
}

void adjustDate(int year, int month, int date, int hour, int min, int sec, int weekday)
{
  DateTime dt(year, month, date, hour, min, sec, weekday);
  rtc.setDateTime(dt); // adjust date-time as defined by 'dt'
                       // Serial.println(rtc.now().getEpoch());	//debug info
}

float readTemp()
{
  float temp;
  rtc.convertTemperature();
  temp = rtc.getTemperature();
  // Serial.print(rtc.getTemperature());
  // dtostrf(temp, 5, 2, temperature);
  return temp;
}

void readTimeStamp()
{
  DateTime now = rtc.now(); //get the current date-time
  String ts = String(now.year());

  if (now.month() <= 9)
  {
    ts += "0" + String(now.month());
  }
  else
  {
    ts += String(now.month());
  }

  if (now.date() <= 9)
  {
    ts += "0" + String(now.date());
  }
  else
  {
    ts += String(now.date());
  }

  if (now.hour() <= 9)
  {
    ts += "0" + String(now.hour());
  }
  else
  {
    ts += String(now.hour());
  }

  if (now.minute() <= 9)
  {
    ts += "0" + String(now.minute());
  }
  else
  {
    ts += String(now.minute());
  }

  if (now.second() <= 9)
  {
    ts += "0" + String(now.second());
  }
  else
  {
    ts += String(now.second());
  }

  ts.remove(0, 2); //remove 1st 2 data in ts
  ts.toCharArray(Ctimestamp, 13);
  /*
  if (DEBUG == 1)
  {
    Serial.print("Timestamp: ");
  }
  if (DEBUG == 1)
  {
    Serial.println(Ctimestamp);
  }
*/
}

//default every 10 minutes interval
void setAlarm()
{
  DateTime now = rtc.now(); //get the current date-time

  if ((now.minute() >= 0) && (now.minute() <= 9))
  {
    store_rtc = 10;
  }
  else if ((now.minute() >= 10) && (now.minute() <= 19))
  {
    store_rtc = 20;
  }
  else if ((now.minute() >= 20) && (now.minute() <= 29))
  {
    store_rtc = 30;
  }
  else if ((now.minute() >= 30) && (now.minute() <= 39))
  {
    store_rtc = 40;
  }
  else if ((now.minute() >= 40) && (now.minute() <= 49))
  {
    store_rtc = 50;
  }
  else if ((now.minute() >= 50) && (now.minute() <= 59))
  {
    store_rtc = 0;
  }
  rtc.enableInterrupts(store_rtc, 00); // interrupt at (m,s)
  if (DEBUG == 1)
  {
    Serial.print("Next alarm: ");
  }
  if (DEBUG == 1)
  {
    Serial.println(store_rtc);
  }
}

//30 minutes interval
void setAlarmEvery30(int alarmSET)
{
  DateTime now = rtc.now(); //get the current date-time
  switch (alarmSET)
  {
  case 0:
  {
    // Serial.println("set 0/30 . . .");
    if ((now.minute() >= 0) && (now.minute() <= 29))
    {
      store_rtc = 30;
    }
    else if ((now.minute() >= 30) && (now.minute() <= 59))
    {
      store_rtc = 0;
    }
    enable_rtc_interrupt();
    break;
  }
  case 1:
  {
    // Serial.println("set 5/35 . . .");
    if ((now.minute() >= 0) && (now.minute() <= 34))
    {
      store_rtc = 35;
    }
    else if ((now.minute() >= 35) && (now.minute() <= 59))
    {
      store_rtc = 5;
    }
    enable_rtc_interrupt();
    break;
  }
  case 2:
  {
    // Serial.println("set 10/40 . . .");
    if ((now.minute() >= 0) && (now.minute() <= 39))
    {
      store_rtc = 40;
    }
    else if ((now.minute() >= 40) && (now.minute() <= 59))
    {
      store_rtc = 10;
    }
    enable_rtc_interrupt();
    break;
  }
  case 3:
  {
    // Serial.println("set 15/45 . . .");
    if ((now.minute() >= 0) && (now.minute() <= 44))
    {
      store_rtc = 45;
    }
    else if ((now.minute() >= 45) && (now.minute() <= 59))
    {
      store_rtc = 15;
    }
    enable_rtc_interrupt();
    break;
  }
  case 4:
  {
    //set every 10 minutes interval
    if ((now.minute() >= 0) && (now.minute() <= 9))
    {
      store_rtc = 10;
    }
    else if ((now.minute() >= 10) && (now.minute() <= 19))
    {
      store_rtc = 20;
    }
    else if ((now.minute() >= 20) && (now.minute() <= 29))
    {
      store_rtc = 30;
    }
    else if ((now.minute() >= 30) && (now.minute() <= 39))
    {
      store_rtc = 40;
    }
    else if ((now.minute() >= 40) && (now.minute() <= 49))
    {
      store_rtc = 50;
    }
    else if ((now.minute() >= 50) && (now.minute() <= 59))
    {
      store_rtc = 0;
    }
    enable_rtc_interrupt();
    break;
  }
  case 5:
  {
    //set every 15 minutes interval
    if ((now.minute() >= 5) && (now.minute() <= 14))
    {
      store_rtc = 15;
    }
    else if ((now.minute() >= 15) && (now.minute() <= 24))
    {
      store_rtc = 25;
    }
    else if ((now.minute() >= 25) && (now.minute() <= 34))
    {
      store_rtc = 35;
    }
    else if ((now.minute() >= 35) && (now.minute() <= 44))
    {
      store_rtc = 45;
    }
    else if ((now.minute() >= 45) && (now.minute() <= 54))
    {
      store_rtc = 55;
    }
    else if ((now.minute() >= 55) && (now.minute() <= 4))
    {
      store_rtc = 5;
    }
    enable_rtc_interrupt();
    break;
  }
  case 6:
  {
    //set every 10 minutes interval
    if ((now.minute() >= 0) && (now.minute() <= 9))
    {
      store_rtc = 10;
    }
    else if ((now.minute() >= 10) && (now.minute() <= 19))
    {
      store_rtc = 20;
    }
    else if ((now.minute() >= 20) && (now.minute() <= 29))
    {
      store_rtc = 30;
    }
    else if ((now.minute() >= 30) && (now.minute() <= 39))
    {
      store_rtc = 40;
    }
    else if ((now.minute() >= 40) && (now.minute() <= 49))
    {
      store_rtc = 50;
    }
    else if ((now.minute() >= 50) && (now.minute() <= 59))
    {
      store_rtc = 0;
    }
    enable_rtc_interrupt();
    break;
  }
  }
}

void enable_rtc_interrupt()
{
  rtc.enableInterrupts(store_rtc, 00); // interrupt at (minutes, seconds)
  if (DEBUG == 1)
  {
    Serial.print("Next alarm: ");
  }
  if (DEBUG == 1)
  {
    Serial.println(store_rtc);
  }
  readTimeStamp();
}

bool isChangeParam()
{
  String serial_line;
  unsigned long serStart = millis();

  Serial.println("Enter C to change:");
  do
  {
    serial_line = Serial.readStringUntil('\r\n');
  } while ((serial_line == "") && ((millis() - serStart) < 10000));
  serial_line.toUpperCase();
  serial_line.replace("\r", "");
  if (serial_line == "C")
  {
    return true;
  }
  else
  {
    printMenu();
    Serial.println("Change cancelled. Reselect.");
    return false;
  }
}
