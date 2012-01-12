Parts for Satellite Modem Shield
================================

Parts for this device aren't always easy to find. Satellite Modems are picky about everything.

Power Capacitors
----------------

The 9602 requires very clean power, with good decoupling. We use a mix of standard decoupling caps, and super caps.

Supercapacitors recommended are >0.5F, >=5.4V, <=.5Ω ESR.
We use Caps rated to -40c for flight.

Recommended Power Caps:

- [Illinois Capacitor 155DCN5R4Q](http://octopart.com/255dcn5r4q-illinois+capacitor-8159693)
  - 5.4V
  - 1.5F
  - 200 mΩ ESR
- [Illinois Capacitor 255DCN5R4Q](http://octopart.com/255dcn5r4q-illinois+capacitor-8159858)
  - 5.4V
  - 2.5F
  - 130 mΩ ESR

Power Regulator
---------------

The Arduino 5v regulator cannot supply nearly enough power. The board includes a footprint for this 5v Point-of-Load Power Adapter.

- [Pololu Voltage Regulator](http://www.pololu.com/catalog/product/2110)