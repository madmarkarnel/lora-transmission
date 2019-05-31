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
    else if (command == "AT+SETTS"){
      setupTime();
    }    
    else if (command == "AT+READTS"){
      readTimeStamp();
    }  
    else if (command == "AT+READTEMP"){
      // Serial.print("RTC Temperature: ");
      readTemp();  
    } 
    else if (command == "AT+DUE"){
      get_Due_Data();
    }
    else if (command == "A"){
      get_Due_Data();
    }
    else if (command == "EXIT"){
      debug_flag == 0;
      Serial.println("Exiting debug mode!");
    }             
    else{
      Serial.println(ERRORSTR);
    }
}

void debug_menu(){
  Serial.println("Menu:");

}

void setupTime() {
  int MM = 0, DD = 0, YY = 0, hh = 0, mm = 0, ss = 0, dd = 0;
  Serial.println(F("\nSet time and date in this format: YY,MM,DD,hh,mm,ss,dd[0-6]Mon-Sun"));
  delay (50);
  //2018,11,15,11,32,30,2
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
  // Serial.print(F("Time now is: "));
  // Serial.println(Ctimestamp);        
  readTimeStamp();
}

void adjustDate(int year, int month, int date, int hour, int min, int sec, int weekday){
  DateTime dt(year, month, date, hour, min, sec, weekday);
  rtc.setDateTime(dt);  // adjust date-time as defined by 'dt'
  // Serial.println(rtc.now().getEpoch());  //debug info
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
  ts.remove(0,2);   //remove 1st 2 data in ts
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

void setAlarmEvery30(char ABCD){
  DateTime now = rtc.now(); //get the current date-time
  switch(ABCD){
    case 'A':{
      if((now.minute() >= 0) && (now.minute() <=29)){
        store_rtc = 30;
      }
      else if((now.minute() >= 30) && (now.minute() <=59)){
        store_rtc = 0;
      }
      enable_rtc_interrupt();
      break;
    }
    case 'B':{
      //do
      if((now.minute() >= 0) && (now.minute() <=29)){
        store_rtc = 35;
      }
      else if((now.minute() >= 30) && (now.minute() <=59)){
        store_rtc = 5;
      }
      enable_rtc_interrupt();
      break;
    }
    case 'C':{
      //do
      if((now.minute() >= 0) && (now.minute() <=29)){
        store_rtc = 40;
      }
      else if((now.minute() >= 30) && (now.minute() <=59)){
        store_rtc = 10;
      }
      enable_rtc_interrupt();
      break;      
    }
    case 'D':{
      //do
      if((now.minute() >= 0) && (now.minute() <=29)){
        store_rtc = 45;
      }
      else if((now.minute() >= 30) && (now.minute() <=59)){
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
}