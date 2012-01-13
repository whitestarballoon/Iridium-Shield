EESchema Schematic File Version 2  date Thu 12 Jan 2012 07:20:22 PM EST
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:iridium-shield
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "13 jan 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4200 7050
Wire Wire Line
	4200 7200 4200 6750
Connection ~ 4200 6850
Wire Wire Line
	3950 6850 3950 6750
Wire Wire Line
	3650 6550 4500 6550
Wire Wire Line
	3950 6750 4200 6750
Connection ~ 4200 6950
$Comp
L GND #PWR?
U 1 1 4F0F78B1
P 4200 7200
F 0 "#PWR?" H 4200 7200 30  0001 C CNN
F 1 "GND" H 4200 7130 30  0001 C CNN
	1    4200 7200
	1    0    0    -1  
$EndComp
$Comp
L U.FL_ANT U?
U 1 1 4F0F788A
P 3650 6750
F 0 "U?" H 3650 6150 60  0000 C CNN
F 1 "U.FL_ANT" H 3650 6250 60  0000 C CNN
	1    3650 6750
	-1   0    0    -1  
$EndComp
$Comp
L 9602 U?
U 4 1 4F0F7881
P 6350 7000
F 0 "U?" H 6350 6700 50  0000 C CNN
F 1 "9602" H 6350 6800 50  0000 C CNN
	4    6350 7000
	1    0    0    -1  
$EndComp
$Comp
L 9602 U?
U 2 1 4F0F7864
P 4500 6750
F 0 "U?" H 4500 6450 50  0000 C CNN
F 1 "9602" H 4500 6550 50  0000 C CNN
	2    4500 6750
	1    0    0    -1  
$EndComp
$Comp
L 9602 U?
U 1 1 4F0F783E
P 3700 2250
F 0 "U?" H 3700 1950 50  0000 C CNN
F 1 "9602" H 3700 2050 50  0000 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
$Comp
L ARDUINO_MEGA_SHIELD SHIELD?
U 1 1 4F0F782A
P 8100 3850
F 0 "SHIELD?" H 7700 6350 60  0000 C CNN
F 1 "ARDUINO_MEGA_SHIELD" H 8000 1150 60  0000 C CNN
	1    8100 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
