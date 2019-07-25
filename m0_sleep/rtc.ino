#define ATCMD     "AT"
#define ATECMDTRUE  "ATE"
#define ATECMDFALSE "ATE0"
#define OKSTR     "OK"
#define ERRORSTR  "ERROR"

bool ate = false;

void getAtcommand(){

  String serial_line, command;
  int i_equals = 0;
    
  do{
     serial_line = Serial.readStringUntil('\r\n');
    }while(serial_line == "");
    serial_line.toUpperCase();
    serial_line.replace("\r","");

    // echo command if ate is set, default true
    if (ate) Serial.println(serial_line);

    // get characters before '='
    i_equals = serial_line.indexOf('=');
    if (i_equals == -1) command = serial_line;
    else command = serial_line.substring(0,i_equals);

    // Serial.println(command);
    
    if (command == ATCMD)
      Serial.println(OKSTR);
    else if (command == ATECMDTRUE){
      ate = true;
      Serial.println(OKSTR);
    }
    else if (command == ATECMDFALSE){
      ate = false;
      Serial.println(OKSTR);
    }
    else if (command == "A"){
      get_Due_Data();
    }
    else if (command == "B"){
      //do something
    }    
    else if (command == "C"){
      setAlarmInterval();
    }    
    else if (command == "D"){
      readTemp();
    }    
    else if (command == "R"){
      readTimeStamp();
    } 
    else if (command == "?"){
      printMenu();
    } 
    else if (command == "S"){
      setupTime();
    }               
    else if (command == "E"){
      debug_flag = 0;
      Serial.println("Exiting debug mode!");
    }
    else if (command == "F"){
      readFromFlashMem();
    }  
    else if (command == "Y"){
      Serial.print("Current command: ");
      sensCommand = passCommand.read();
      Serial.println(sensCommand.senslopeCommand);
    }            
    else if (command == "Z"){
      //do something
      changeSensCommand();
    }                 
    else{
      Serial.println(ERRORSTR);
    }
}

void printMenu(){
  Serial.println(F("-------------------------------------"));
  Serial.println(F("[?] Print this menu"));
  Serial.println(F("[A] Sample sensor data"));
  Serial.println(F("[B] Do something."));
  Serial.println(F("[C] Change LoRa sending time."));
  Serial.println(F("[D] Read RTC temperature."));
  Serial.println(F("[E] Exit Debug mode."));
  Serial.println(F("[F] Print sending interval settings"));
  Serial.println(F("[R] Read Timestamp."));
  Serial.println(F("[S] Set date and time.")); 
  Serial.println(F("[Y] Print SENSLOPE command.")); 
  Serial.println(F("[Z] Change SENSLOPE command.")); 
  Serial.println(F("-------------------------------------"));
}

void print_rtcInterval(){
  Serial.print("Alarm interval every: ");
  Serial.println(store_rtc);
  Serial.println("------------------------------------------------");
  Serial.println("Enter alarm settings:");
  Serial.println("[0] Alarm for every 0 and 30 minutes interval");
  Serial.println("[1] Alarm for every 5 and 35 minutes interval");
  Serial.println("[2] Alarm for every 10 and 40 minutes interval");
  Serial.println("[3] Alarm for every 15 and 45 minutes interval");
  Serial.println("------------------------------------------------");
}

void setAlarmInterval(){
  int alarmSelect;
  print_rtcInterval();
  delay(1000);
  while(!Serial.available()){}
  if(Serial.available()){
    Serial.setTimeout(5000);
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

void readFromFlashMem(){
  int fromAlarmStorage;
  fromAlarmStorage = alarmStorage.read();
  alarm_setting = fromAlarmStorage;
  Serial.print("Alarm setting: ");
  Serial.println(alarm_setting);
}

void changeSensCommand(){
  Serial.setTimeout(10000);
  Serial.print("Insert command: ");
  String dynaCommand = Serial.readStringUntil('\n');
  Serial.println(dynaCommand);
  dynaCommand.toCharArray(sensCommand.senslopeCommand, 50);
  passCommand.write(sensCommand);
}

void setupTime() {
  int MM = 0, DD = 0, YY = 0, hh = 0, mm = 0, ss = 0, dd = 0;
  Serial.println(F("\nSet time and date in this format: YY,MM,DD,hh,mm,ss,dd[0-6]Mon-Sun"));
  delay (50);
  
  while (!Serial.available()) {}
  if (Serial.available()) {
    YY = Serial.parseInt();
    MM  = Serial.parseInt();
    DD = Serial.parseInt();
    hh = Serial.parseInt();
    mm = Serial.parseInt();
    ss = Serial.parseInt();
    dd = Serial.parseInt();
  }
  delay(10);
  adjustDate(YY, MM, DD, hh, mm, ss, dd);    
  readTimeStamp();
}

void adjustDate(int year, int month, int date, int hour, int min, int sec, int weekday){
	DateTime dt(year, month, date, hour, min, sec, weekday);
	rtc.setDateTime(dt);	// adjust date-time as defined by 'dt'
	// Serial.println(rtc.now().getEpoch());	//debug info
}

void readTemp(){
  float temp;
  rtc.convertTemperature();
  temp = rtc.getTemperature();
  // Serial.print(rtc.getTemperature());
  dtostrf(temp, 5, 2, temperature);
  Serial.print("RTC Temperature: ");
  Serial.println(temp);
}

void readTimeStamp(){
  DateTime now = rtc.now(); //get the current date-time
  String ts = String(now.year());
  
  if (now.month() <= 9){
    ts += "0" + String(now.month());
  }else{
    ts += String(now.month());
  }

  if (now.date() <= 9){
    ts += "0" + String(now.date());
  }else{
    ts += String(now.date());
  }

  if (now.hour() <= 9){
    ts += "0" + String(now.hour());
  }else{
    ts += String(now.hour());
  }

  if (now.minute() <= 9){
    ts += "0" + String(now.minute());
  }else{
    ts += String(now.minute());
  }

  if (now.second() <= 9){
    ts += "0" + String(now.second());
  }else{
    ts += String(now.second());
  }

  ts.remove(0,2);                 //remove 1st 2 data in ts
  ts.toCharArray(Ctimestamp, 13);

  if (DEBUG == 1) {Serial.print("Timestamp: ");}
  if (DEBUG == 1) {Serial.println(Ctimestamp);}
}

//default every 10 minutes interval
void setAlarm(){
  DateTime now = rtc.now(); //get the current date-time

  if((now.minute() >= 0) && (now.minute() <=9)){
    store_rtc = 10;
  }
  else if((now.minute() >= 10) && (now.minute() <=19)){
    store_rtc = 20;
  }
  else if((now.minute() >= 20) && (now.minute() <=29)){
    store_rtc = 30;
  }
  else if((now.minute() >= 30) && (now.minute() <=39)){
    store_rtc = 40;
  }
  else if((now.minute() >= 40) && (now.minute() <=49)){
    store_rtc = 50;
  }
  else if((now.minute() >= 50) && (now.minute() <=59)){
    store_rtc = 0;
  }  
  rtc.enableInterrupts(store_rtc, 00);    // interrupt at (m,s)
  if (DEBUG == 1) {Serial.print("Next alarm: ");}
  if (DEBUG == 1) {Serial.println(store_rtc);}
}

void setAlarmEvery30(int alarmSET){
  DateTime now = rtc.now(); //get the current date-time
  switch(alarmSET){
    case 0:{
      // Serial.println("set 0/30 . . .");
      if((now.minute() >= 0) && (now.minute() <=29)){
        store_rtc = 30;
      }
      else if((now.minute() >= 30) && (now.minute() <=59)){
        store_rtc = 0;
      }
      enable_rtc_interrupt();
      break;
    }
    case 1:{
      // Serial.println("set 5/35 . . .");
      if((now.minute() >= 0) && (now.minute() <=34)){
        store_rtc = 35;
      }
      else if((now.minute() >= 35) && (now.minute() <=59)){
        store_rtc = 5;
      }
      enable_rtc_interrupt();
      break;
    }
    case 2:{
      // Serial.println("set 10/40 . . .");
      if((now.minute() >= 0) && (now.minute() <=39)){
        store_rtc = 40;
      }
      else if((now.minute() >= 40) && (now.minute() <=59)){
        store_rtc = 10;
      }
      enable_rtc_interrupt();
      break;      
    }
    case 3:{
      // Serial.println("set 15/45 . . .");
      if((now.minute() >= 0) && (now.minute() <=44)){
        store_rtc = 45;
      }
      else if((now.minute() >= 45) && (now.minute() <=59)){
        store_rtc = 15;
      }
      enable_rtc_interrupt();
      break;      
    }
  }
}

void enable_rtc_interrupt(){
  rtc.enableInterrupts(store_rtc, 00);    // interrupt at (m,s)
  if (DEBUG == 1) {Serial.print("Next alarm: ");}
  if (DEBUG == 1) {Serial.println(store_rtc);}  
  readTimeStamp();
}

void serialCommands(){
  char command = Serial.read();

  switch(command){
    case '?':{
      printMenu();
      break;
    }
    case 'A':{
      get_Due_Data();
      break;
      //sample sensor data
    }
    case 'B':{
      Serial.print("Alarm interval every: ");
      Serial.println(store_rtc);
  
      break;
      }    
    case 'C':{
      // Serial.print("Alarm interval every: ");
      // Serial.println(store_rtc);
      // change();
      // break;
      //sample sensor data
      // while(Serial.available()){
      //   int x = Serial.read();
      //   setAlarmEvery30(x);
      //   break;
      // }
      Serial.print("Alarm interval every: ");
      Serial.println(store_rtc);
      Serial.println("------------------------------------------------");
      Serial.println("Enter alarm settings:");
      Serial.println("[0] Alarm for every 0 and 30 minutes interval");
      Serial.println("[1] Alarm for every 5 and 35 minutes interval");
      Serial.println("[2] Alarm for every 10 and 40 minutes interval");
      Serial.println("[3] Alarm for every 15 and 45 minutes interval");
      Serial.println("------------------------------------------------");
      break; 
    }    
    case 'D':{
      readTemp();
      break;
    }
    case 'R':{
      readTimeStamp();
      break;
    }
    case 'S':{
      setupTime();
      break;
    }

    dafault:
    printMenu();
    // Serial.println("Invalid option");    
    break;
  }
}
