This library supports a single IDE drive configured as master.
Testing has been performed with an Arduino Mega 2560 and a
Seagate Barracuda 7200.7 40 Gbyte drive (ST340014A). No additional
components are required for operation..

Pin connections between Mega and IDE cable:

IDE              Arduino Mega
 1 /RESET         22  PA0
 2 GND            GND
 3 D7             42  PL7
 4 D8             37  PC0
 5 D6             43  PL6
 6 D9             36  PC1
 7 D5             44  PL5
 8 D10            35  PC2
 9 D4             45  PL4
10 D11            34  PC3
11 D3             46  PL3
12 D12            33  PC4
13 D2             47  PL2
14 D13            32  PC5
15 D1             48  PL1
16 D14            31  PC6
17 D0             49  PL0
18 D15            30  PC7
19 GND            GND
22 GND            GND
23 /WR            23  PA1
24 GND            GND
25 /RD            24  PA2
26 GND            GND
30 GND            GND
33 A1             26  PA4
35 A0             25  PA3
36 A2             27  PA5
37 /CS0           28  PA6
38 /CS1           29  PA7

If you want a drive activity light, add

39 /ACT           to LED tied to Vcc via 470 ohm resistor.

