import serial.tools.list_ports
import serial
import time

def list_comports():
	comports = set()
	ports = serial.tools.list_ports.comports()
	for port in ports:
		print(port.device)
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
	return comport

def set_datetime():
	ser.write("S\r\n".encode())
	pass
	
def set_servernum():
	ser.write("F\r\n".encode())
	pass
	
def set_loggerversion():
	ser.write("J\r\n".encode())
	pass
	
def set_sendingtime():
	ser.write("D\r\n".encode())
	pass

def main():
	print("*"*10,"V5 AUTOCONFIG","*"*10,'\n')
	serport = comport_setup()
	ser = serial.Serial(serport, 115200)
	print("Start")
	time.sleep(1)
	try:
		while True:
			if(ser.in_waiting > 0):
				rx = ser.read_until().decode().strip()
				print(rx)
				if "Press 'C' to go DEBUG mode!" in rx:
					ser.write("C\r\n".encode())
					time.sleep(1)
				if "[Z] Change SENSLOPE command." in rx:
					ser.write("E\r\n".encode())
					time.sleep(1)
	except KeyboardInterrupt:
		ser.close()
	ser.close()

main()