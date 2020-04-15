# -*- coding: utf-8 -*-
"""
Created: Fri Aug 02 14:32:24 2019
@author: Mark Arnel B. Domingo
Updated: Jan 27 13:35:12 2020
"""
import serial, time
from datetime import datetime as dt

ser = serial.Serial('COM69', 115200, timeout = 1) # change COMPORT 'COM72'

print ('Setting MCU timestamp!')
ser.flushInput()

def main():
    ser.write("S".encode()) #send S command to MCU to update timestamp
    time.sleep(1)
    ser.write("C".encode()) #send S command to MCU to update timestamp
    timeStamp = str(dt.today().strftime("%Y,%m,%d,%H,%M,%S") + ',' + '0').encode()
    time.sleep(0.5)
    ser.write(timeStamp)
    pcTs = timeStamp.decode('ascii')
    print ("PC timestamp: ", pcTs)
    time.sleep(1)
    readout = ser.readline().strip()
    while True:
        try:
            tsOut = readout.decode('ascii')
            print("MCU timestamp: ", tsOut)
            print ("Timestamp succesfully updated!")
            break
        except:
            print ("Timestamp NOT updated!")
    ser.flush() #flush buffer

if __name__=='__main__':
    try:
	    main()        
    except KeyboardInterrupt:
        print ("Aborting ...")
    finally:
        ser.close()