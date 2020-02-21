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
  }
  while (serial_line == "");
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

  // Serial.println(command);

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
    get_Due_Data(get_logger_version());
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
  else if (command == "H")
  {
    Serial.println(stationName_from_flashMem());
    build_message();
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
  else if (command == "S")
  {
    readTimeStamp();
    Serial.print("Timestamp: ");
    Serial.println(Ctimestamp);
    if (isChangeParam())
        setupTime();
  }
  else if (command == "O")
  {
    Serial.print("CSQ: ");
    Serial.println(getCSQ());
    // getCSQ();
  }
  else if (command == "P")
  {
    Serial.print("Rain tips: ");
    Serial.println(rainTips);
    delay(20);
    // resetRainTips();
    // attachInterrupt(digitalPinToInterrupt(RAININT), rainISR, FALLING);
  }
  else if (command == "Q")
  {
    resetRainTips();
  }
  else if (command == "U")
  {
    Serial.println("sending rain gauge data . . .");
    send_rain_tips();
  }
  else if (command == "V")
  {
    sleepGSM();
  }
  else if (command == "W")
  {
    wakeGSM();
  }
  else if (command == "X")
  {
    Serial.println("waiting fo LoRa data. . .");
    receive_lora_data(get_logger_version());
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
  }
  else if (command == "L")
  {
    build_message();
    send_thru_gsm(dataToSend, get_serverNum_from_flashMem());
  }
  else if (command == "J")
  {
    Serial.print("Logger version: ");
    Serial.println(get_logger_version());
    if (isChangeParam())
      setLoggerVersion();
    Serial.readStringUntil('\r\n');
  }
  else if (command == "F")
  {
    Serial.print("Server Number: ");
    Serial.println(get_serverNum_from_flashMem());
    if (isChangeParam())
      changeServerNumber();
  }
  else if (command == "M")
  {
    Serial.print("RSSI: ");
    Serial.println(tx_RSSI);
  }
  else if (command == "N")
  {
    Serial.println("MADTB*VOLT:12.33*200214111000");
    char toParse[200];
    Serial.setTimeout(15000);
    Serial.println("Insert String to be parsed: ");
    String fromUser = Serial.readStringUntil('\n');
    fromUser.toCharArray(toParse, 200);
    Serial.println(parse_voltage(toParse));
  }
  else if (command == "G")
  {
    //print voltage
    Serial.print("Voltage: ");
    Serial.println(BatteryVoltage(get_logger_version()));
    Serial.println(read_batt_vol(get_logger_version()));
  }
  else if (command == "Z")
  {
    //do something
    Serial.print("Current command: ");
    sensCommand = passCommand.read();
    Serial.println(sensCommand.senslopeCommand);
    Serial.print("Sensor Name: ");
    Serial.println(sensCommand.stationName);
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
  Serial.println(F("-------------------------------------"));
  Serial.println(F("[C] Print this menu"));
  Serial.println(F("[A] Sample sensor data"));
  Serial.println(F("[B] Read RTC temperature."));
  Serial.println(F("[D] Change LoRa sending time."));
  Serial.println(F("[E] Exit Debug mode."));
  Serial.println(F("[F] Change 'server number' from flash memory"));
  Serial.println(F("[G] Print input voltage"));
  Serial.println(F("[H] Print station name from flash memory."));
  Serial.println(F("[J] Change logger version from flash memory"));
  Serial.println(F("[L] Print data to send. (rain)"));
  Serial.println(F("[M] Print LoRa rssi values."));
  Serial.println(F("[N] Parse data from user"));
  Serial.println(F("[O] Read GSM CSQ."));
  Serial.println(F("[P] Read rain gauge tip."));
  Serial.println(F("[Q] Reset rain tips."));
  Serial.println(F("[S] Set date and time."));
  Serial.println(F("[U] Send rain tips."));
  Serial.println(F("[V] Sleep GSM"));
  Serial.println(F("[W] Wake GSM"));
  Serial.println(F("[X] wait for Lora data"));
  Serial.println(F("[Z] Change SENSLOPE command."));
  Serial.println(F("-------------------------------------"));
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
  Serial.println("[0] Default LoRa transmitter for Raspberry Pi");
  Serial.println("[1] V5 datalogger with GSM");
  Serial.println("[2] For V5 datalogger remote transmitter");
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
  Serial.println("Insert command: ");
  String dynaCommand = Serial.readStringUntil('\n');
  // Serial.println(dynaCommand);
  Serial.println("Insert sensor name: ");
  String sensorName = Serial.readStringUntil('\n');
  // Serial.println(sensorName);
  dynaCommand.toCharArray(sensCommand.senslopeCommand, 50);
  sensorName.toCharArray(sensCommand.stationName, 10);
  passCommand.write(sensCommand); //save to flash memory
}

void changeServerNumber()
{
  Serial.setTimeout(15000);
  Serial.println("Insert server number GLOBE - 639175972526 ; SMART - 639088125642");
  String ser_num = Serial.readStringUntil('\n');
  ser_num.toCharArray(flashServerNumber.inputNumber, 50);
  newServerNum.write(flashServerNumber); //save to flash memory
}

void setupTime()
{
  int MM = 0, DD = 0, YY = 0, hh = 0, mm = 0, ss = 0, dd = 0;
  //Serial.println(F("\nSet time and date in this format: YY,MM,DD,hh,mm,ss,dd[0-6]Mon-Sun"));
  delay(50);

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
  }
  while ((serial_line == "") && ((millis() - serStart) < 10000));
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
