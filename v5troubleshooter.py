import serial.tools.list_ports as sertool
import serial
import time
from datetime import datetime as dt
import json

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
        readout += ser.read(ser.in_waiting).decode('ascii', 'replace')
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

def get_config(parameter, command, startword, endword, printer=True):
    swrite(command, 2)
    readout = sread()
    chunk = readout[readout.index(startword):readout.index(endword)].strip()
    if printer:
        print(chunk)
    file_content['config'][parameter] = chunk
    swrite(command, 1)
    waitread("C", True, "----------", 5, 1)
    return chunk

def get_servernum(printer=True):
    get_config("servernumber", "F", "Server Number:", "Enter C to change:", printer)
    
def get_logver(printer=True):
    retrieved = get_config("loggerversion", "J", "Logger version: ", "Enter C to change:", printer)
    return int(retrieved[len("Logger version: ")])

def get_sendingtime(printer=True):
    get_config("sendingtime", "D", "Alarm every", "Enter C to change:", printer)

def get_mcupassword(printer=True):
    get_config("mcupassword", "K", "Password:", "Enter C to change:", printer)

def get_loggernames(printer=True):
    get_config("loggernames", "N", "Gateway", "Enter C to change:", printer)

def get_sensorcommand(printer=True):
    get_config("sensorcommand", "Z", "Current command:", "Enter C to change:", printer)

def proc_csq():
    print("\nStart process: Getting CSQ data")
    keyword = 'CSQ: '
    csqs = []
    for i in range(11):
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
            print(f"{csq}", end=', ', flush = True)
            csqs.append(csq)
        except Exception as e:
            print(e)
            print(f"Invalid CSQ: {m0Csq}")
    csqs.sort()
    midcsq = csqs[len(csqs)//2]
    if 9 < midcsq < 99:
        result = "PASS"
    else:
        result = "FAIL"
        if midcsq == 99:
            file_content['solution']['csq'] = solution_csq_99
        else:
            file_content['solution']['csq'] = solution_csq_low
    print(f"\nCentral value: {midcsq}")
    print (f"RESULT: {result}")
    waitread("C", True, "----------", 5, 1)
    file_content['result']['csq'] = [result, midcsq]
    return result

def proc_sms():
    print("\nStart process: Sending test SMS")
    keyword = "Enter message to send: "
    swrite("Y", 3)
    data = sread()
    if keyword in data:
        swrite("V5 Test SMS", 5)
        if isfound("Message sent!"):
            print("Sent test SMS successfully.")
            result = "PASS"
        else:
            print("Sending test SMS failed.")
            result = "FAIL"
            file_content['solution']['sms'] = solution_sms
    print (f"RESULT: {result}")
    waitread("C", True, "----------", 5, 1)
    file_content['result']['sms'] = result
    return result

def proc_datetime():
    print("\nStart process: Getting timestamp")
    keyword = 'Timestamp: '
    sysTs = dt.now()
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
        if sysTs > ts:
            td = (sysTs - ts).total_seconds()
        else:
            td = (ts - sysTs).total_seconds()
        print(f"Offset by {td} seconds")
        if td < 15:
            result = "PASS"
        else:
            result = "FAIL"
            file_content['solution']['time'] = solution_time
    except Exception as e:
        print(e)
        print(f"Invalid timestamp: {m0Ts}")
    swrite("S", 1)  
    print (f"RESULT: {result}")
    waitread("C", True, "----------", 5, 1)
    file_content['result']['time'] = [result, ts.strftime('%Y-%m-%d %H:%M:%S')]
    return result

def proc_battvolt():
    print("\nStart process: Getting battery voltage")
    keyword = "Voltage: "
    volts = []
    voltsum = 0
    for i in range(5):
        swrite("G", 3)
        data = sread()
        if len(data) > len(keyword) and keyword in data:
            i = data.index(keyword) + len(keyword)
            m0Volt = data[i:-1]
        else:
            m0Volt = data
        try:
            volt = float(m0Volt)
            print(f"{volt}V", end = ", ", flush = True)
            volts.append(volt)
            voltsum += volt
        except Exception as e:
            print(e)
            print(f"Invalid voltage: {m0Volt}")
    voltave = voltsum / len(volts)
    print(f"\nAverage voltage: {round(voltave, 2)}")
    if 10.5 < voltave < 14:
        result = "PASS"
    else:
        result = "FAIL"
        file_content['solution']['batt'] = solution_batt
    print (f"RESULT: {result}")
    waitread("C", True, "----------", 5, 1)
    file_content['result']['batt'] = [result, volt]
    return result

def proc_senstrig():
    print("\nStart process: Checking sensor trigger")
    swrite("A")
    ctr = 0
    result = "PASS"
    while True:
        o = sread(True)
        if "NODATAFROMSENSLOPE" in o:
            result = "FAIL"
            file_content['solution']['trig'] = solution_trig
        if "Turning OFF Custom Due. . ." in o:
            break
        if ctr > 360:
            break
        ctr += 3
        time.sleep(3)
    print (f"RESULT: {result}")
    waitread("C", True, "----------", 5, 1)
    file_content['result']['trig'] = result
    return result

def has_gsm(logver):
    return True if logver in [0,1,3,4,5] else False

def has_sensor(logver):
    return True if logver in [1,2,6] else False

def main():
    print("="*20)
    logver = get_logver()
    get_sendingtime()
    get_sensorcommand()
    get_loggernames()
    get_servernum()
    get_mcupassword()
    print("="*20)
    if has_gsm(logver):
        proc_csq()
        proc_sms()
    proc_datetime()
    proc_battvolt()
    if has_sensor(logver):
        proc_senstrig()
    print(f"\n{'='*20}")
    for item in file_content['solution']:
        print(file_content['solution'][item])
    print("\n","*"*10,"COMPLETED","*"*10)

print('\n',"#"*35,'\n',"#"*8,"V5 TROUBLESHOOTER","#"*8,'\n',"#"*35,'\n')

solution_csq_low = """Possible solution for poor signal (CSQ = 0-9):
1. Adjust antenna direction to find a better signal.
2. Check antenna connections.
3. Replace GSM module.
4. Replace antenna connectors.
5. Replace antenna wire.
6. Replace GSM antenna.
7. Survey the site for locations with better signal quality yet still close to the sensors. Propose a transfer of antenna or whole gateway to a new location with permission from the community.
"""

solution_csq_99 = """Possible solution for no communication with GSM (CSQ = 99):
1. Check GSM connections (wires, connectors, solder). 
2. Check GSM supply voltage from the dc-dc converter (ideal: 4V,  acceptable range: 3.9V - 4.1V) and adjust the voltage when needed. If the ideal voltage cannot be reached after adjustment, replace the dc-dc converter.
3. If there is no voltage output, replace the IC2 power switch.
4. Access the V5 device through ASM and check the CSQ from there.
"""

solution_sms = """Possible solution for unsent SMS
1. Check if it is connected to the network. Allow 1-2 minutes for the SIM card to connect upon startup. GSM indicator light should blink once every 3 seconds.
2. Access the V5 device through ASM and check the SIM network configuration (server number).
3. Check if the SIM card is inserted correctly. Correct orientation is engraved on the back side of the GSM module.
4. Verify with the admin (Ate Amy) if the SIM card line has no billing issues.
5. Check if the SIM card is still working by inserting it in a compatible phone and testing sms functionality (send and receive). Delete messages from the inbox if there’s any.
6. Replace SIM card.
"""

solution_time = """Possible solution for incorrect datetime
1. Ensure that the computer used to set up the v5 device has the correct date and time. Set the date and time using ASM / settime.py / v5autoconfig.py.
2. Check if the real time clock battery is inserted in the slot provided.
3. Check the RTC battery voltage. If the reading is below 3V, replace the battery with a new one.
4. Replace the real time clock IC.
5. Replace the V5 board.
"""

solution_batt = """Possible solution for low battery voltage
1. Check connections (wires, connectors).
2. Check the voltage manually using a voltmeter (ideal: 12V, acceptable range: 10.5 - 13 Volts). Consider replacing the battery if voltage is below 10.5 V.
"""

solution_trig = """Possible solution for problems in sensor trigger (no sensor data).
1. Check connections (wires, connectors). Also ensure that the sensor and custom due is working.
2. Check voltage output of the trigger. Reading should be approximately 12 volts.
3. If there is no voltage output, replace the power switch IC1.
"""

try:
    file_content = {'about':{}, 'config':{}, 'result':{}, 'solution':{}}
    file_content['about']['loggercode'] = input("DATALOGGER NAME: ")
    file_content['about']['personnel'] = input("PERSONNEL: ")
    file_content['about']['timestart'] = dt.now().strftime('%y%m%d%H%M%S')
    file_name = f"logv5_{file_content['about']['timestart']}_{file_content['about']['loggercode'].lower()}_{file_content['about']['personnel'].lower()}.json"
    #print(file_name)
    serport = comport_setup()
    serbaud = 115200
    ser = serial.Serial(serport, serbaud)
    print("Started\n")
    time.sleep(3)
    swrite("C",1)
    serial_clear()
    main()
except Exception as e:
    print(e)
finally:
    with open(file_name, 'w') as f:
        json.dump(file_content, f, indent=4)
    swrite("E",1)
    ser.close()
