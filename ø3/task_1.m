A = 2;          % Amplitude
T = 8e-3;       % Periodetid
N = 100;        % Beregningspunkter?
W = T/4;        % Pulsbredden
f_c = 500;      % Knekkfrekvensen


Fs = 200;
t = 0:1/Fs:(10);

pulsewidth = 2-3;
pulseperiods = (0:10)*8e-3;

x = pulstran(t,pulseperiods,@rectpuls,pulsewidth);

plot(t,x)
axis([0 4e-5 -0.5 1.5])