close all

tdt05ns = load('100nsGates.wfm.csv');
tdt3ns = load('100nsGates3nstdt.wfm.csv');

dt05 = "100nsGates";
dt3 = "100nsGates3nstdt";
x1diode = "200nsNoisydioseDropVS-1xdiode";
x2diode = "200nsNoisydioseDropVS-2xdiode";
HighGS = "100nsHighGateSourcecsv";
LowGD = "LowGateDrain";
NoFet = "NOFetGate";
test = "test";
rfmin = "MinINPulse";
GanMin = "GanFetMinPW";
GanGatesPreFilter = "GanGatesPreFilter";
GanMinPW = "GanFetPreFilter";
DiffHighVgs = "DiffHighVgs";
DiffGanVoLowVgs = "DiffGanVoLowVgs";
DiffGanVoHighVgs = "DiffGanVoHighVgs";

linethickness = 2; % Line thickness option
textscale = 1.5; % Text and legend scale option
timeUnit = "ns";

figure;
tiledlayout(2, 2);
nexttile;
OscilloscopePlotter(dt05, timeUnit, 'titlename', "0.5ns Deadtime", 'linethickness', linethickness, 'textscale', textscale)
legend('High Gate', 'Low Gate');
nexttile;
OscilloscopePlotter(x1diode, timeUnit, 'titlename', "1 Diode")
legend('Diode Voltage drop', 'VS')
nexttile;
OscilloscopePlotter(dt3, timeUnit, 'titlename', "3ns Deadtime", 'linethickness', linethickness, 'textscale', textscale)
legend('Low Gate', 'High Gate');
nexttile;
OscilloscopePlotter(x2diode, timeUnit)
legend('Diode Voltage drop', 'VS')

figure;
tiledlayout(2, 1)
nexttile;
OscilloscopePlotter(HighGS, timeUnit, 'titlename', "High RFFet")
legend('Gate', 'Source');
nexttile;
OscilloscopePlotter(LowGD, timeUnit, 'titlename', "Low RFFet")
legend('Drain', 'Gate');

figure;
OscilloscopePlotter(NoFet, timeUnit, 'titlename', "No fet")

figure;
OscilloscopePlotter(rfmin, timeUnit)

figure;
OscilloscopePlotter(GanMin, timeUnit)

Attenuatorloss = 10^(-30/20);
rescalefactor = 1 / Attenuatorloss;


figure;
tiledlayout(2, 2)
nexttile;
OscilloscopePlotter(GanGatesPreFilter, timeUnit,'rescale2factor',[rescalefactor,1,1])
legend('Vo','Low Vgs','High Vgs')


nexttile;
OscilloscopePlotter(DiffGanVoLowVgs, timeUnit,'rescale2factor',[rescalefactor,1])
legend('Vo','Vgs')

nexttile;
OscilloscopePlotter(DiffHighVgs, timeUnit,'rescale2factor',[rescalefactor,1])
legend('Vo','Vgs')

nexttile;
OscilloscopePlotter(DiffGanVoHighVgs, timeUnit,'rescale2factor',[rescalefactor,1])
legend('Vo','Vgs')

