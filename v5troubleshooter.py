import serial.tools.list_ports as sertool
import serial
import time
from datetime import datetime as dt
import csv

def list_comports():
    comports = set()
    ports = sertool.comports()
    for port in ports:
        #print(port.device)
        comports.add(port.device)
    #print(comports)
    return comports

def comport_setup():
    get_comport1 = list_comports()
    print("Plug in or replug the v5 device.")
    counter = 0
    while True:
        time.sleep(0.5)
        get_comport2 = list_comports()
        comdiff = get_comport2 - get_comport1
        if len(comdiff) == 1:
            comport = list(comdiff)[0]
            break
        elif len(get_comport1 - get_comport2) == 1:
            get_comport1 = get_comport2
        if counter > 60:
            print("Error: Timeout reached; no device detected.")
            raise
        counter += 1
    print(comport)
    return comport

def serial_clear(input = True, output = True):
    if input:
        ser.reset_input_buffer()
        #print("input clear!")
    if output:
        ser.reset_output_buffer()
        #print("output clear!")

def sread(printer = False):
    readout = ""
    while ser.in_waiting:
        readout += ser.read(ser.in_waiting).decode('ascii')
    if printer:
        print(readout, end = '')
    return readout

def swrite(text, delay=0):
    text += '\r\n'
    ser.write(text.encode())
    if delay:
        time.sleep(delay)

def isfound(text, printer = False):
    readout = sread(printer)
    return True if text in readout else False

def waitread(command, rptcmd, expectedout, timeout, increment, printer = False):
    timeout = max(0.2, timeout)
    timeout = min(timeout, 20)
    increment = max(0.1, increment)
    increment = min(increment, timeout)
    millicounter = 0
    serial_clear()
    swrite(command)
    while millicounter < timeout:
        time.sleep(increment)
        millicounter += increment
        if isfound(expectedout, printer):
            serial_clear()
            return True
        if rptcmd:
            swrite(command)
    serial_clear()
    print("Error: Device is not responding.")
    return False

def get_logver():
	return 0

def proc_csq():
    print("\nStart process: Getting CSQ data")
    keyword = 'CSQ: '
    csqs = []
    for i in range(10):
        #waitread("O", False, "CSQ: ", 5, 0.5, True)
        #sread(True)
        swrite("O", 2)
        data = sread()
        if len(data) > len(keyword) and keyword in data:
            i = data.index(keyword) + len(keyword)
            m0Csq = data[i:-1]
        else:
            m0Csq = data
        try:
            csq = int(m0Csq)
            print(f"{keyword}{csq}")
            csqs.append(csq)
        except Exception as e:
            print(e)
            print(f"Invalid CSQ: {m0Csq}")
    print(csqs)
    print ("End process: Done!")
    waitread("C", True, "----------", 5, 1)

def proc_sms():
    print("\nStart process: Sending test SMS")
    keyword = "Enter message to send: "
    swrite("Y", 3)
    data = sread()
    if keyword in data:
        swrite("V5 Test SMS", 5)
		if isfound("Message sent!"):
			print("Sent test SMS successfully.")
		else:
			print("Sending test SMS failed.")
    print ("End process: Done!")
    waitread("C", True, "----------", 5, 1)

def proc_datetime():
    print("\nStart process: Getting timestamp")
    keyword = 'Timestamp: '
    swrite("S", 3)
    data = sread()
    if len(data) > len(keyword) and keyword in data:
        i = data.index(keyword) + len(keyword)
        m0Ts = data[i:i+12]
    else:
        m0Ts = data
    try:
        ts = dt.strptime(m0Ts, '%y%m%d%H%M%S')
        print(f"{keyword}{ts.strftime('%Y-%m-%d %H:%M:%S')}")
    except Exception as e:
        print(e)
        print(f"Invalid timestamp: {m0Ts}")
    swrite("S", 1)  
    print ("End process: Done!")
    waitread("C", True, "----------", 5, 1)

def proc_battvolt():
    print("\nStart process: Getting battery voltage")
    keyword = "Voltage: "
    swrite("G", 3)
    data = sread()
    if len(data) > len(keyword) and keyword in data:
        i = data.index(keyword) + len(keyword)
        m0Volt = data[i:-1]
    else:
        m0Volt = data
    try:
        volt = float(m0Volt)
        print(f"{keyword}{volt}")
    except Exception as e:
        print(e)
        print(f"Invalid voltage: {m0Ts}")
    print ("End process: Done!")
    waitread("C", True, "----------", 5, 1)

def proc_senstrig():
    print("\nStart process: Checking sensor trigger")
    swrite("A", 3)
    sread(True)
    print ("End process: Done!")
    waitread("C", True, "----------", 5, 1)

def has_gsm():
	return True if get_logver() in [0,1,3,4,5] else False

def has_sensor():
	return True if get_logver() in [1,2,6] else False

def main():
	if has_gsm():
		proc_csq()
		proc_sms()
    proc_datetime()
    proc_battvolt()
	if has_sensor():
		proc_senstrig()

print('\n',"#"*35,'\n',"#"*8,"V5 TROUBLESHOOTER","#"*8,'\n',"#"*35,'\n')
try:
    serport = comport_setup()
    serbaud = 115200
    ser = serial.Serial(serport, serbaud)
    print("Started")
    time.sleep(3)
    swrite("C",1)
    serial_clear()
    main()
except Exception as e:
    print(e)
finally:
    ser.close()