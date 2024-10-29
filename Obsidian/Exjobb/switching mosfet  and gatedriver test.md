
### Saker att Undersöka

| Vad som undersöks              | Utrustning                                  |
| ------------------------------ | ------------------------------------------- |
| Gate driver Trise, Tfall       | Ossiloscope                                 |
| Mosfet Trise, Tfall            | Ossiloscope                                 |
| min On time                    | Ossiloscope                                 |
| Verkningsgrad                  | Strömätrare/<br>effektmätare/<br>multimeter |
| Max switch freq                | PWM Generator 50Mhz &<br>Ossiloscope        |
| Värmeutveckling på komponenter | Värmekamera/<br>termometer                  |
| Matspänningar                  | 20V                                         |
|                                | 10V                                         |
| Load Testlaster                |                                             |

Testet går huvudsakligen ut på att undersöka Gatedriver:n samt hur mosfeterna beter sig
Hur snabbt kan vi switcha Gatedrivere? Mosfet?
Vilken min On time -> min pwm %
rise & fall time för Mosfets -> switchingförluster
allmän verkningsgrad
Mosfets värmeutveckling?, dock är kretskortet gjort för en min load på 235 $\Omega$ -> 85mA, men det skulle vara möjligt att modifiera och koppla på andra laster
