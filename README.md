Iridium Modem  Shield
==============

This is an Arduino Shield designed by the [White Star Balloon](http://www.whitestarballoon.com) team.  This shield works with the Iridium 9602 Satellite Modem, transmitting small binary data messages to or from anywhere in the world. (340 bytes from modem to Internet, 270 bytes to modem from Internet)  It's original purpose is to provide 2-way telemetry and control communications on trans-atlantic weather balloon flights.  

This repository does not currently hold any source code for the shield, simply design files.  If you'd like your own shield hardware, currently please inquire at <info@whitestarballoon.org> or <BradLuyster@gmail.com>.

This shield is designed using the KiCad Software.

Compatibility
-------------

This shield is compatible with the following platforms:

-  Arduino Mega
-  Seeduino Mega
-  Netduino
-  Arduino Uno
-  Arduino Due (Untested)

Power Requirements
------------

This shield is designed to fully support the 9602 Modem based on the Arduino voltage input. You must use an external power supply capable of supplying at least 10W peak power. The 9602 uses 5V@2A when transmitting.

Bare Iridium 9602 modem modules and antennas are available from [NAL Research](http://www.nalresearch.com/IridiumHardware.html) (look for 9602-I).

Specifications
--------------

- U.FL connector for antenna
- [Pololu Voltage Regulator](http://www.pololu.com/catalog/product/2110) header for supplying clean power to 9602
- Configurable Serial Pins (Selectable by solder or pin jumpers)
  - Pins 18/19 for UART1 on Arduino Mega (and similar)
  - Pins 0/1 for UART on Arduino Uno/Due and Netduino
  - Pins 7/8 for SoftSerial
- Pin 2: Ring Indicator (Input to Arduino ON INTERRUPT PIN)
- Pin 3: Network Available Indicator (Input to Arduino ON INTERRUPT PIN)
- Pin 4: Modem On/Off Control (Output from Arduino)
- Pin 6: DSR (Input to Arduino)
- Big Capacitors to provide 5V @ 1.5A to the Transmitter for the duration of transmission (~10mS)

Theory of operation
--------------

### Modem Module Power Requirements 
These requirements should be met by the shield circuitry itself, and are different from the shield input power requirements.  Meeting the requirements that White Star has defined for the shield will allow the shield to take care of the modem properly.  

9602 Input Voltage range: 5.0V DC ±0.5V
9602 Input Voltage Ripple: <40mV pp

- The supply voltage droop over for a 8.3ms burst of 1.5A current should not be more than 0.2 Volts. 
- The power supply should limit the in-rush2 current to 4 Amps maximum
- The power source shall provide for over current protection in case of device malfunction.
- The supply noise should be less than the limits in the following profile:
￼￼￼￼100 mVpp   from 0 to 50kHz
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
Note: More power will be drawn by an antenna that has a higher VSWR (poorly matched) 

### Onboard Power Supply Circuit

Power Supply Circuit is designed to provide as much of the 9602 modem's requirements as possible.  


License
-------

![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).