# -*- coding: utf-8 -*-
"""
Created on Fri Aug 02 14:32:24 2019

@author: Mark Arnel B. Domingo
"""
import serial, time
from datetime import datetime as dt


ser = serial.Serial()
#ser.port = '/dev/samplingusbport'
ser.port = "COM56"
ser.baudrate = 115200
ser.bytesize = serial.EIGHTBITS 
ser.parity = serial.PARITY_NONE 
ser.stopbits = serial.STOPBITS_ONE 
ser.timeout = 1            
ser.xonxoff = False     
ser.rtscts = False     
ser.dsrdtr = False      
ser.writeTimeout = 2    

def main():
    print ('Setting RTC timestamp!')
    ser.open()
    
    time.sleep(1)

    ser.write('S'.encode())
    time.sleep(1)
    
    timeStamp = str(dt.today().strftime("%Y,%m,%d,%H,%M,%S") + ',' + '0').encode()
    
    ser.write(timeStamp)
    print("PC time: ", timeStamp.decode('ascii'))
    
    time.sleep(1)
    
    ser.write('R'.encode())
    
    ts = ser.readlines()
    
    print("RTC", ts[2].decode('ascii').strip())
    #print(ts)
    
    time.sleep(0.2)
    ser.close()
    
   
    
if __name__=='__main__':
    try:
	    main()        
    except KeyboardInterrupt:
        print ("Aborting ...")
    finally:
        ser.close()