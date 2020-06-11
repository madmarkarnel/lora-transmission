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
	input("Unplug the v5 device. (Press Enter to continue)")
	get_comport1 = list_comports()
	print("Isaksak sa usb port ang v5 device.")
	while True:
		time.sleep(0.5)
		get_comport2 = list_comports()
		comdiff = get_comport2 - get_comport1
		if len(comdiff) == 1:
			comport = list(comdiff)[0]
			break
		elif len(get_comport1 - get_comport2) == 1:
			get_comport1 = get_comport2			
	print(comport)
	return comport

def set_datetime():
	#S...C...timestamp
	print("\nStart process: Updating timestamp")
	serial_clear()
	swrite("S")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	timeStamp = dt.today().strftime("%Y,%m,%d,%H,%M,%S,%w")
	serial_clear()
	swrite(timeStamp)
	time.sleep(1)
	readout = ser.read(12)
	pcTs = timeStamp
	mcuTs = readout.decode('ascii')
	print ("PC timestamp: ", pcTs)
	print ("MCU timestamp: ", mcuTs)
	print ("End process: Timestamp succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def set_servernum(network):
	#F...C...servernum
	if 'globe' in network:
		servernum = "639175972526"
	elif 'smart' in network:
		servernum = "639088125642"
	else:
		return
	print("\nStart process: Updating server number")
	serial_clear()
	swrite("F")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	print("Server Number:",servernum)
	serial_clear()
	swrite(servernum)
	time.sleep(1)
	print ("End process: Server number succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def set_loggerversion(logver):
	#J...C...loggerversion
	print("\nStart process: Updating logger version")
	serial_clear()
	swrite("J")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	print("Logger version:",logver)
	serial_clear()
	swrite(logver)
	time.sleep(1)
	print ("End process: Logger version succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def set_sendingtime(sendingtime):
	#D...C...sendingtime
	print("\nStart process: Updating sending time")
	serial_clear()
	swrite("D")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	print("Sending time:", sendingtime)
	swrite(sendingtime)
	time.sleep(1)
	print ("End process: Sending time succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def set_mcupassword(pw):
	#K...C...password
	print("\nStart process: Updating mcu password")
	serial_clear()
	swrite("K")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	print("MCU password:", pw)
	swrite(pw)
	time.sleep(1)
	print ("End process: MCU password succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def set_loggernames():
	#N...C...logname
	lognames = conf['loggernames'][1].split(' ')
	print("\nStart process: Updating datalogger names")
	serial_clear()
	swrite("N")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	sread(1)
	for logname in lognames:
		swrite(logname.upper())
		sread(1)
	time.sleep(1)
	print ("End process: Names succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def set_command(cmd):
	#Z...C...cmd
	print("\nStart process: Updating sensor command")
	serial_clear()
	swrite("Z")
	while not isfound("Enter C to change:"):
		time.sleep(1)
	swrite("C")
	time.sleep(1)
	print("Command:", cmd)
	swrite(cmd)
	time.sleep(1)
	print ("End process: Command succesfully updated!")
	serial_clear()
	while not isfound("----------"):
		swrite("C",1)
	serial_clear()

def serial_clear(input = True, output = True):
	if input:
		ser.reset_input_buffer()
		#print("input clear!")
	if output:
		ser.reset_output_buffer()
		#print("output clear!")

def sread(printer=False):
	readout = ""
	while ser.in_waiting:
		readout += ser.read(ser.in_waiting).decode('ascii')
	if printer:
		print(readout)
	return readout

def swrite(text, delay=0):
	text += '\r\n'
	ser.write(text.encode())
	if delay:
		time.sleep(delay)

def isfound(text):
	readout = sread()
	#if readout: print(readout)
	return True if text in readout else False

def loadconfig(printer=True):
	csvfile = "datav5config.csv"
	cnf = dict()
	with open(csvfile) as f:
		reader = csv.reader(f)
		header_row = next(reader)
		#print (header_row)
		for row in reader:
			#print(row)
			#check_csv_integrity(row)
			cnf[row[0].lower().strip()] = [int(row[1].strip()), row[2].strip()] 
		if printer:
			print("-"*35,"\n","Config Settings")
			for key in cnf.keys():
				if cnf[key][0]:
					print(f'{key}: {cnf[key][1]}')
			print("-"*35, "\n")
		return cnf

def check_sensorcommand():
	if conf['sensorcommand'][1].upper() in ['ARQCMD6T', 'ARQCMD6S']:
		return True
	else:
		return False

def check_logver_logname():
	logver = conf['loggerversion'][1]
	lognames = conf['loggernames'][1].split(' ')
	if logver in ['1', '3']:
		logname_count = 2
	elif logver == '4':
		logname_count = 3
	elif logver == '5':
		logname_count = 4
	else:
		logname_count = 1
	if len(lognames) == logname_count:
		#print(lognames)
		return True
	else:
		return False
	
def check_csv_integrity(row):
	pass

def main():
	serial_clear()
	try:
		while not isfound("----------"):
			swrite("C",1)
		serial_clear()
		print('-'*10);
		if conf['realtimeclock'][0]:
			set_datetime()
		if conf['servernetwork'][0]:
			set_servernum(conf['servernetwork'][1].lower())
		if conf['loggerversion'][0]:
			set_loggerversion(conf['loggerversion'][1])
		if conf['sendingtime'][0]:
			set_sendingtime(conf['sendingtime'][1])
		if conf['sensorcommand'][0]:
			if check_sensorcommand():
				set_command(conf['sensorcommand'][1].upper())
		if conf['mcupassword'][0]:
			set_mcupassword(conf['mcupassword'][1])
		if conf['loggernames'][0]:
			if check_logver_logname():
				set_loggernames()
			else:
				print("\nCheck number of logger names")
		swrite("E")
		print('\n',"*"*10,"V5 AutoConfig Finished.","*"*10)
	except Exception as e:
		print("Error:", e)
	except KeyboardInterrupt:
		print("Terminating...")
	finally:
		ser.close()

print('\n',"*"*35,'\n',"*"*10,"V5 AUTOCONFIG","*"*10,'\n',"*"*35,'\n')
conf = loadconfig()
serport = comport_setup()
ser = serial.Serial(serport, 115200)
print("Started")
time.sleep(1)
main()