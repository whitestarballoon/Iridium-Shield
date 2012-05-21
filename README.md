Iridium 9602 Satelite Modem Shield
==============

This Arduino/Netduino shield will interface an Iridium 9602 SBD Satellite Modem, transmitting small binary (or text) data messages to or from anywhere in the world. (340 bytes from modem to Internet, 270 bytes to modem from Internet)  It's been tested in the field to provide 2-way telemetry and control communications on long-duration weather balloon flights for http://whitestarbaloon.com.  

If you'd like your own shield PCB, feel free to use the Gerber directory to have a copy made, or email <info@whitestarballoon.org> for more info.

This shield is designed using the KiCad Software.

For Arduino code that we used with this shield, see the [White Star Comm-Controller github repository](https://github.com/whitestarballoon/Com-Controller).  Flight tested!

Features
-------------

- U.FL connector for antenna
- [Pololu Voltage Regulator](http://www.pololu.com/catalog/product/2110) header for supplying clean power to 9602
- Super Capacitors to Decouple Transmit Spike (5V @ 1.5A for ~10mS during transmission)
- Configurable Serial Lines (Selectable by solder or pin jumpers)

Compatibility
-------------

This shield is compatible with the following platforms:

-  Arduino Mega (Tested with Mega 2560)
-  Seeduino Mega (Untested)
-  Netduino (Untested)
-  Arduino Uno (Untested)
-  Arduino Due (Untested)

Requirements
------------

### Power input
This shield is designed to accept power in 2 different ways, CHOOSE ONLY ONE:

- External 5V regulated, 2A is recommended (as low as 500ma may work with reduced transmit duty cycle) 
  - supply higher power here (no more than 3.5A) here if you experience brownout warnings or want to use a smaller supercap
  - Screw terminals available on the shield
- Arduino/Netduino onboard voltage 5V regulator
  - Transmissions will have to be limited to once every few minutes, to allow supercap to charge
  
### Additional Components Not Included
- Iridium 9602 Modem
  - Bare Iridium 9602 modem modules are available from [NAL Research](http://www.nalresearch.com/IridiumHardware.html) (look for 9602-I).
- Iridium Antenna
  - u.fl to SMA adapter cable 
  - Antennas are available from [NAL Research](http://www.nalresearch.com/IridiumHardware.html).
  - DO NOT OPERATE 9602 MODEM WITHOUT PROPER ANTENNA

Optional Accessories
----------------
- Screw/JST connector for 5V in on shield
- Li-Poly Power Shield

Bill of Materials
----------------
See google doc: [IRShield BOM](https://docs.google.com/spreadsheet/ccc?key=0AnfcbUEovLhOdDBFMjhTX09pdklTWF9EdWd0ZmhmX1E&hl=en_US)

Specifications (actual for Rev 1 pcb)
--------------

Arduino pin numbers:

- Pins D18/D19 for UART1 on Arduino Mega (and similar) *REV 1 PCB swap lines using wire jumpers from JP4 to D18, and JP2 to D19*
- Pins D0/D1 for UART on Arduino Uno/Due and Netduino *REV 1 PCB swap lines using wire jumpers diagonally across JP4 and JP2*
- Pins D7/D8 for SoftSerial (Optional) *REV 1 PCB swap tx/rx in software*
- Pin D2: Message Waiting Indicator (RI, ACTIVE-LOW on Interrupt 0)
- Pin D3: Satellite Available Indicator (NA, ACTIVE-LOW on  Interrupt 1)
- Pin D4: Modem Power Enable (SET HIGH = TURN MODEM ON)
- Pin D5: Brownout Detector Indicator 4.8v (ACTIVE-LOW)
- Pin D6: Modem Bootup Complete Indicator (DSR, ACTIVE-LOW)

Shield LED Labels:

- D1 = (RI) Message Waiting Indicator
- D2 TX = Serial data TO 9602 **CONFUSING**
- D3 RX = Serial data FROM 9602 **CONFUSING**
- D4 = 5V Power ON
- D5 = (NA) Satellite Available 

Theory of operation
-------------------

### Modem Module Power Requirements 
These requirements should be met by the shield circuitry itself, and are different from the shield input power requirements.  Meeting the requirements that White Star has defined for the shield will allow the shield to take care of the modem properly.  

9602 Input Voltage range: 5.0V DC ±0.5V
9602 Input Voltage Ripple: <40mV pp

- The supply voltage droop over for a 8.3ms burst of 1.5A current should not be more than 0.2 Volts. 
- The power supply should limit the in-rush2 current to 4 Amps maximum
- The power source shall provide for over current protection in case of device malfunction.
- The supply noise should be less than the limits in the following profile:
    100 mVpp   from 0 to 50kHz
	5 mVpp     at 1 MHz measured in 50 kHz bandwidth
	10 mVpp    at 1 MHz measured in 1MHz bandwidth
	5 mVpp     above 5 MHz measured in 1 MHz bandwidth

9602 Power Consumption (Typical, depending on antenna and satellite view)
	45mA
	195mA
	1.5A 	Transmit Current peak
	190mA 	Transmit Current average
	195mA 	Receive Current peak
	45mA 	Receive Current average
	190 mA 	Message Transfer average current 
	<= 1.0W Message Transfer average power
Note: More power will be drawn by an antenna that has a high VSWR (poorly matched) 

### Onboard Power Supply Circuit

The power supply circuitry is design to provide the requirements of the 9602.  Due consideration in selecting an external power supply for arduino is necessary.

License
-------

![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).