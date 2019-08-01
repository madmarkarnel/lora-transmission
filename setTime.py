# -*- coding: utf-8 -*-
"""
Created on Mon Jul 02 14:32:24 2018

@author: MAD
"""
import serial, time
from datetime import datetime as dt


ser = serial.Serial()
#ser.port = '/dev/samplingusbport'
ser.port = "COM38"
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
    print "Setting RTC timestamp!"
    ser.open()
    
    time.sleep(1)
    
    '''
    ser.write("at")
    time.sleep(1)
    res = ser.readlines()
    print (ser)
    time.sleep(.5)
    '''
    ser.write("S")
    #ser.write("at+setts")
    time.sleep(1)
    
    ser.write(dt.today().strftime("%Y,%m,%d,%H,%M,%S") + ',' + "0")
    #ser.write("0" + ',' + dt.today().strftime("%d,%m,%Y,%H,%M,%S"))
    
    print(dt.today().strftime("%Y,%m,%d,%H,%M,%S") + ',' + "0")
    #print("0" + ',' + dt.today().strftime("%d,%m,%Y,%H,%M,%S"))
    
    time.sleep(1)
    #ser.write("at+readts")
    ser.write("R")
    
    ts = ser.readlines()
    print(ts)

    time.sleep(0.2)
    ser.close
    
'''    
    time.sleep(3)
#    ser.write("at+readts")
    
    
    
'''    
    
if __name__=='__main__':
    try:
	    main()        
    except KeyboardInterrupt:
        print "Aborting ..."
    finally:
        ser.close