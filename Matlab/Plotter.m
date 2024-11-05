tdt05ns=load('100nsGates.wfm.csv');
tdt3ns=load('100nsGates3nstdt.wfm.csv');

dt05 = "100nsGates";
dt3 = "100nsGates3nstdt";
x1diode="200nsNoisydioseDropVS-1xdiode";
x2diode="200nsNoisydioseDropVS-2xdiode";
HighGS ="100nsHighGateSourcecsv";
LowGD = "LowGateDrain";
NoFet = "NOFetGate";
test= "test";
rfmin= "MinINPulse";
GanMin = "GanFetMinPW" 


linethickness = 2; % Line thickness option
textscale = 1.5; % Text and legend scale option


timeUnit = "ns";

figure;
tiledlayout(2, 2);
nexttile;
OscilloscopePlotter(dt05,timeUnit,"0.5ns Deadtime", linethickness, textscale)
legend('High Gate','Low Gate');
nexttile;
OscilloscopePlotter(x1diode,timeUnit,"1 Diode")
legend('Diode Voltage drop', 'VS')
nexttile;
OscilloscopePlotter(dt3,timeUnit,"3ns Deadtime", linethickness, textscale)
legend('Low Gate','High Gate');
nexttile;
OscilloscopePlotter(x2diode,timeUnit)
legend('Diode Voltage drop', 'VS')

figure;
tiledlayout(2,1)
nexttile;
OscilloscopePlotter(HighGS,timeUnit, "High RFFet")
legend('Gate','Soruce');
nexttile;
OscilloscopePlotter(LowGD,timeUnit, "Low RFFet")
legend('Drain','Gate');


figure;
OscilloscopePlotter(NoFet,timeUnit, "No fet")

figure;
OscilloscopePlotter(rfmin,timeUnit)

figure;
OscilloscopePlotter(GanMin,timeUnit)

