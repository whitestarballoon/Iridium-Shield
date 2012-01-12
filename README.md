Iridium Shield
==============

This is an Arduino Shield for the [White Star Balloon](http://www.whitestarballoon.com) program.  This shield works with the Iridium 9602 Satellite Modem, transmitting data anywhere in the world.

This repository does not currently hold any source code for the shield, simple design files.  If you'd like your own shield, please inquire at <BradLuyster@gmail.com>.

This shield is designed using the KiCad Software.

Compatibility
-------------

This shield is compatible with the following platforms:

-  Arduino Mega
-  Seeduino Mega
-  Netduino
-  Arduino Uno
-  Arduino Due (Untested)

Requirements
------------

This shield is designed to fully support the 9602 Modem based on the Arduino voltage input. You must use an external power supply capable of supplying at least 10W peak power. The 9602 uses 5V@2A when transmitting.

You can source a 9602 Modem and a Helical Antenna from the DeLorme inReach product.

Specifications
--------------

- U.FL connector for DeLorme antenna (or similar)
- [Pololu Voltage Regulator](http://www.pololu.com/catalog/product/2110) header for supplying clean power to 9602
- Configurable Serial Lines (Selectable by jumpers)
  - Pins 18/19 for UART1 on Arduino Mega (and similar)
  - Pins 0/1 for UART on Arduino Uno/Due and Netduino
  - Pins 7/8 for SoftSerial Option
- Pin 2: Ring Indicator (Input to Arduino)
- Pin 3: Network Available Indicator (Input to Arduino)
- Pin 4: Modem On/Off (Output from Arduino)
- Pin 6: DSR (Input to Arduino)
- Big Capacitors to Decouple Transmit Spike

License
-------

![Creative Commons License](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).