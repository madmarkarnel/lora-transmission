char IMUdataToSend[200];
uint8_t calib = 0;

char *build_IMU_data()
{
  char str[20];
  char temp[6];
  dtostrf((readTemp()), 5, 2, temp);

  for (int i = 0; i < 200; i++)
    IMUdataToSend[i] = 0x00;
  /* MADTA*ST*accelerometer(x,y,z),magnetometer(x,y,z), gyro(x,y,z), rtc temperature,200901142120*/
  strncpy((IMUdataToSend), (get_logger_A_from_flashMem()), (20));
  strncat(IMUdataToSend, "*ST*", 4);

  int *data = (int *)malloc(sizeof(int) * 9);
  if (calib == 1)
  {
    data = get_calib_data();
  }
  else
    data = get_raw_data();

  for (int i = 0; i < 9; i++)
  {
    sprintf(str, "%f", ((float)data[i]) / 100.0);
    strncat(IMUdataToSend, str, String(str).length() + 1);
    strncat(IMUdataToSend, ",", 1);
  }

  strncat(dataToSend, temp, sizeof(temp));
  strncat(IMUdataToSend, ",", 1);
  strncat(IMUdataToSend, Ctimestamp, sizeof(Ctimestamp));
  delay(100);
  return IMUdataToSend;
}

int *get_raw_data()
{
  int *data = (int *)malloc(sizeof(int) * 9);
  /* Get a new sensor event */
  sensors_event_t event, aevent, mevent;

  gyro.getEvent(&event);
  /* Get a new sensor event */
  accelmag.getEvent(&aevent, &mevent);

  //accel data
  data[0] = (int)(aevent.acceleration.x * 100.0);
  data[1] = (int)(aevent.acceleration.y * 100.0);
  data[2] = (int)(aevent.acceleration.z * 100.0);

  //magnetometer data
  data[3] = (int)(mevent.magnetic.x * 100.0);
  data[4] = (int)(mevent.magnetic.y * 100.0);
  data[5] = (int)(mevent.magnetic.z * 100.0);

  //gyro data
  data[6] = (int)(event.gyro.x * 100.0);
  data[7] = (int)(event.gyro.y * 100.0);
  data[8] = (int)(event.gyro.z * 100.0);

  return data;
}

int *get_calib_data()
{
  int *calib_data = (int *)malloc(sizeof(int) * 9);
  int *raw_data = (int *)malloc(sizeof(int) * 9);

  int *a_param = (int *)malloc(sizeof(int) * 12);
  int *m_param = (int *)malloc(sizeof(int) * 12);
  int *g_param = (int *)malloc(sizeof(int) * 3);
  /* Get a new sensor event */

  for (int i = 0; i < 100; i++)
  {
    raw_data = get_raw_data();

    delay(1);
  }

  a_param = get_calib_param_from_flashMem(1);
  calib_data[0] = a_param[0] * (raw_data[0] - a_param[9]) + a_param[1] * (raw_data[1] - a_param[10]) + a_param[2] * (raw_data[5] - a_param[11]);
  calib_data[1] = a_param[3] * (raw_data[0] - a_param[9]) + a_param[4] * (raw_data[1] - a_param[10]) + a_param[5] * (raw_data[5] - a_param[11]);
  calib_data[2] = a_param[6] * (raw_data[0] - a_param[9]) + a_param[7] * (raw_data[1] - a_param[10]) + a_param[8] * (raw_data[5] - a_param[11]);

  m_param = get_calib_param_from_flashMem(2);
  calib_data[3] = m_param[0] * (raw_data[3] - m_param[9]) + m_param[1] * (raw_data[4] - m_param[10]) + m_param[2] * (raw_data[5] - m_param[11]);
  calib_data[4] = m_param[3] * (raw_data[3] - m_param[9]) + m_param[4] * (raw_data[4] - m_param[10]) + m_param[5] * (raw_data[5] - m_param[11]);
  calib_data[5] = m_param[6] * (raw_data[3] - m_param[9]) + m_param[7] * (raw_data[4] - m_param[10]) + m_param[8] * (raw_data[5] - m_param[11]);

  g_param = get_calib_param_from_flashMem(3);
  calib_data[6] = raw_data[6] - g_param[0];
  calib_data[7] = raw_data[7] - g_param[1];
  calib_data[8] = raw_data[8] - g_param[2];

  return calib_data;
}

//if sensor = 1 = accel, 2= magnetometer, 3= gyroscope
int *get_calib_param_from_flashMem(int sensor)
{
  char *param;
  int num_of_param, i = 0;

  imu_calib calib_read = flash_imu_calib.read();

  switch (sensor)
  {
  case 1: //accel
    num_of_param = 12;
    param = calib_read.accel_param;
    break;

  case 2: //magnetometer
    num_of_param = 12;
    param = calib_read.magneto_param;
    break;

  case 3: //gyroscope
    num_of_param = 3;
    param = calib_read.gyro_param;
    break;
  }

  int *calib_param = (int *)malloc(sizeof(int) * num_of_param);

  String str;
  Serial.println(param);

  while ((str = strtok_r(param, ";", &param)) != NULL)
  { // delimiter is the semicolon
    Serial.println(str);
    calib_param[i] = (int)(str.toFloat() * 10000.0);
    i++;
  }

  for (int j = 0; j < num_of_param; j++)
  {
    Serial.print(j);
    Serial.print(":\t");
    Serial.println(calib_param[j]);
  }
  return calib_param;
}

void init_IMU()
{
  /* Initialise the sensor */
  // gyro.begin();
  // accelmag.begin(ACCEL_RANGE_4G);

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

void on_IMU()
{
  Serial. println("Turning ON IMU sensor");
  delay(100);
  digitalWrite(IMU_POWER, HIGH);
  delay(100);
  init_IMU();
  delay(100);
}

void off_IMU()
{
  Serial. println("Turning OFF IMU sensor");
  delay(100);
  digitalWrite(IMU_POWER, LOW);
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
