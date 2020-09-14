char IMUdataToSend[200];

char *read_IMU_data()
{  
  for (int i = 0; i < 200; i++) IMUdataToSend[i] = 0x00;
  /* MADTA*ST*accelerometer(x,y,z),magnetometer(x,y,z), gyro(x,y,z), 200901142120*/
  strncpy((IMUdataToSend), (get_logger_A_from_flashMem()), (20));
  strncat(IMUdataToSend, "*ST*", 4);
  strncat(IMUdataToSend, read_acc_x(4), sizeof(read_acc_x(4)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_acc_y(4), sizeof(read_acc_y(4)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_acc_z(4), sizeof(read_acc_z(4)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_mag_x(1), sizeof(read_mag_x(1)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_mag_y(1), sizeof(read_mag_y(1)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_mag_z(1), sizeof(read_mag_z(1)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_gyr_x(1), sizeof(read_gyr_x(1)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_gyr_y(1), sizeof(read_gyr_y(1)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, read_gyr_z(1), sizeof(read_gyr_z(1)));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, Ctimestamp, sizeof(Ctimestamp));
  // strncat(IMUdataToSend, readDateTime(), sizeof(readDateTime()));
  delay(100);
  return IMUdataToSend;
}

void init_IMU()
{
  /* Initialise the sensor */
  if (!gyro.begin()) 
  {
    /* There was a problem detecting the FXAS21002C ... check your connections*/
    Serial.println("Ooops, no FXAS21002C detected ... Check your wiring!");
    // while (1);
  }
  if (!accelmag.begin(ACCEL_RANGE_4G)) 
  {
    /* There was a problem detecting the FXOS8700 ... check your connections */
    Serial.println("Ooops, no FXOS8700 detected ... Check your wiring!");
    // while (1);
  }
}

/*Read acceleration x, y, z data*/
char *read_acc_x(uint8_t decimalPlace)
{
  char AC_x[7];
  AC_x[0] = '\0';
  sensors_event_t aevent;
  accelmag.getEvent(&aevent);
  // double acc_x = (aevent.acceleration.x, decimalPlace);  //ganito ba dapat?
  double acc_x = aevent.acceleration.x;
  dtostrf(acc_x, 3, decimalPlace, AC_x);
  return AC_x;
}

char *read_acc_y(uint8_t decimalPlace)
{
  char AC_y[7];
  AC_y[0] = '\0';
  sensors_event_t aevent;
  accelmag.getEvent(&aevent);
  double acc_y = aevent.acceleration.y;
  dtostrf(acc_y, 3, decimalPlace, AC_y);
  return AC_y;
}

char *read_acc_z(uint8_t decimalPlace)
{
  char AC_z[7];
  AC_z[0] = '\0';
  sensors_event_t aevent;
  accelmag.getEvent(&aevent);
  double acc_z = aevent.acceleration.z;
  dtostrf(acc_z, 3, decimalPlace, AC_z);
  return AC_z;
}

/*Read magnetic x, y, z data*/
char *read_mag_x(uint8_t decimalPlace)
{
  char MG_x[7];
  MG_x[0] = '\0';
  sensors_event_t mevent;
  accelmag.getEvent(&mevent);
  double mg_x = mevent.magnetic.x;
  dtostrf(mg_x, 3, decimalPlace, MG_x);
  return MG_x;
}

char *read_mag_y(uint8_t decimalPlace)
{
  char MG_y[7];
  MG_y[0] = '\0';
  sensors_event_t mevent;
  accelmag.getEvent(&mevent);
  double mg_y = mevent.magnetic.y;
  dtostrf(mg_y, 3, decimalPlace, MG_y);
  return MG_y;
}

char *read_mag_z(uint8_t decimalPlace)
{
  char MG_z[7];
  MG_z[0] = '\0';
  sensors_event_t mevent;
  accelmag.getEvent(&mevent);
  double mg_z = mevent.magnetic.z;
  dtostrf(mg_z, 3, decimalPlace, MG_z);
  return MG_z;
}

/*Read Speed(Gyro) x, y, z data*/
char *read_gyr_x(uint8_t decimalPlace)
{
  char GR_x[7];
  GR_x[0] = '\0';
  sensors_event_t event;
  gyro.getEvent(&event);
  double gr_x = event.gyro.x;
  dtostrf(gr_x, 3, decimalPlace, GR_x);
  return GR_x;
}

char *read_gyr_y(uint8_t decimalPlace)
{
  char GR_y[7];
  GR_y[0] = '\0';
  sensors_event_t event;
  gyro.getEvent(&event);
  double gr_y = event.gyro.y;
  dtostrf(gr_y, 3, decimalPlace, GR_y);
  return GR_y;
}

char *read_gyr_z(uint8_t decimalPlace)
{
  char GR_z[7];
  GR_z[0] = '\0';
  sensors_event_t event;
  gyro.getEvent(&event);
  double gr_z = event.gyro.z;
  dtostrf(gr_z, 3, decimalPlace, GR_z);
  return GR_z;
}

void sensor_get_data()
{
  /* Get a new sensor event */
  sensors_event_t aevent, mevent, event;

  gyro.getEvent(&event);
  /* Get a new sensor event */
  accelmag.getEvent(&aevent, &mevent);
  int temp = 0;

  /* Display the accel results (acceleration is measured in m/s^2) */
  //  Serial.print("A ");
  //  Serial.print("X: ");
  Serial.print(aevent.acceleration.x, 4);
  Serial.print(",");
  //  Serial.print("Y: ");
  Serial.print(aevent.acceleration.y, 4);
  Serial.print(",");
  //  Serial.print("Z: ");
  Serial.print(aevent.acceleration.z, 4);
  Serial.print(",");
  //  Serial.println("m/s^2");

  /* Display the mag results (mag data is in uTesla) */
  //  Serial.print("M ");
  //  Serial.print("X: ");
  Serial.print(mevent.magnetic.x, 1);
  Serial.print(",");
  //  Serial.print("Y: ");
  Serial.print(mevent.magnetic.y, 1);
  Serial.print(",");
  //  Serial.print("Z: ");
  Serial.print(mevent.magnetic.z, 1);
  Serial.print(",");
  //  Serial.println("uT");

  /* Display the results (speed is measured in rad/s) */
  //  Serial.print("X: ");
  Serial.print(event.gyro.x);
  Serial.print(",");
  //  Serial.print("Y: ");
  Serial.print(event.gyro.y);
  Serial.print(",");
  //  Serial.print("Z: ");
  Serial.print(event.gyro.z);
  Serial.print(",");
  Serial.print(temp);

  Serial.println("");
}
