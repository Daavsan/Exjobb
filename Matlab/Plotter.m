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
PWMtriang = "PWMGen-tri-prefilt";
PWMSquare = "PWMGen-sqare-prefilt" ;
PWMpwm = 'PWMGen-pwm-prefilt';
FilterFFT = 'prefilt-in-post-out-fft';
Vdiff_probe_VS_Direct = 'vdiff-probe-direct-32v-30mhz50%';
Vdiff_shunt = 'vdiff-shuntprobe(noisy)-32v-50%30Mhz';
vdiff_Vout = 'vdiff-vout-fsw30M330ohm32v50%';


linethickness = 2; % Line thickness option
textscale = 2.3; % Text and legend scale option
timeUnit = "ns";

figure;
tiledlayout(2, 1);
nexttile;
OscilloscopePlotter(dt05, timeUnit, 'titlename', "0.5ns Deadtime", 'linethickness', linethickness, 'textscale', textscale)
legend('High Gate', 'Low Gate');
nexttile;
OscilloscopePlotter(dt3, timeUnit, 'titlename', "3ns Deadtime", 'linethickness', linethickness, 'textscale', textscale)
legend('Low Gate', 'High Gate');

figure;
tiledlayout(2, 1);
nexttile;
OscilloscopePlotter(x1diode, timeUnit, 'titlename', "1 Diode", 'linethickness', linethickness, 'textscale', textscale)
legend('Diode Voltage drop', 'VS')
nexttile;
OscilloscopePlotter(x2diode, timeUnit, 'linethickness', linethickness, 'textscale', textscale)
legend('Diode Voltage drop', 'VS')

figure;
tiledlayout(2, 1)
nexttile;
OscilloscopePlotter(HighGS, timeUnit, 'titlename', "High RFFet", 'linethickness', linethickness, 'textscale', textscale)
legend('Gate', 'Source');
nexttile;
OscilloscopePlotter(LowGD, timeUnit, 'titlename', "Low RFFet", 'linethickness', linethickness, 'textscale', textscale)
legend('Drain', 'Gate');

figure;
OscilloscopePlotter(NoFet, timeUnit, 'titlename', "Gate Driver Output", 'linethickness', linethickness, 'textscale', textscale)

figure;
OscilloscopePlotter(rfmin, timeUnit, 'linethickness', linethickness, 'textscale', textscale)

figure;
OscilloscopePlotter(GanMin, timeUnit, 'linethickness', linethickness, 'textscale', textscale)

Attenuatorloss = 10^(-30/20);
rescalefactor = 1 / Attenuatorloss;


figure;
tiledlayout(2, 2)
nexttile;
OscilloscopePlotter(GanGatesPreFilter, timeUnit,'rescale2factor',[rescalefactor,1,1], 'linethickness', linethickness, 'textscale', textscale)
legend('Vo','Low Vgs','High Vgs')


nexttile;
OscilloscopePlotter(DiffGanVoLowVgs, timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale)
legend('Vo','Vgs')

nexttile;
OscilloscopePlotter(DiffHighVgs, timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale)
legend('Vo','Vgs')

nexttile;
OscilloscopePlotter(DiffGanVoHighVgs, timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale)
legend('Vo','Vgs')

figure;
nexttile;
OscilloscopePlotter(DiffHighVgs, timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale)
legend('Vo','Vgs')

figure;
tiledlayout(2,1);
nexttile;
OscilloscopePlotter(PWMtriang,timeUnit,'rescale2factor',[0,1], 'linethickness', linethickness, 'textscale', textscale);
%legend('Pre filter','tirangle');
hold on
%nexttile;
OscilloscopePlotter(PWMSquare,timeUnit,'rescale2factor',[0,1], 'linethickness', linethickness, 'textscale', textscale);
%legend('Pre filter','square');
hold on
%nexttile;
OscilloscopePlotter(PWMpwm,timeUnit,'rescale2factor',[0,1], 'linethickness', linethickness, 'textscale', textscale);
%legend('Pre filter','PWN Generator');
legend('pre filter','trinagle','pre','square','pre','PWM Output')
hold off

nexttile;
OscilloscopePlotter(PWMpwm,timeUnit,'rescale2factor',[0,1], 'linethickness', linethickness, 'textscale', textscale);
%legend('Pre filter','PWN Generator')
hold on
OscilloscopePlotter(PWMtriang,timeUnit,'rescale2factor',[rescalefactor,0], 'linethickness', linethickness, 'textscale', textscale);
%legend('Pre filter','tirangle');
legend('pre','PWM Generator','Transistor Output','triang')

hold off;



figure;
OscilloscopePlotter(Vdiff_probe_VS_Direct,timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale);

figure;
OscilloscopePlotter(Vdiff_shunt,timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale);

figure;
OscilloscopePlotter(vdiff_Vout,timeUnit,'rescale2factor',[rescalefactor,1], 'linethickness', linethickness, 'textscale', textscale);



% FilterFFT = 'prefilt-in-post-out-fft';
% Vdiff_probe_VS_Direct = 'vdiff-probe-direct-32v-30mhz50%';
% Vdiff_shunt = 'vdiff-shuntprobe(noisy)-32v-50%30Mhz';
% vdiff-Vout = 