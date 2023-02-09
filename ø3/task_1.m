% 1 Definisjon av det analoge signalet
fs = 100;
D = [0 8]' ;
k = 0 : 1/fs : 10;
w = 2;
y = 2*pulstran(k,D,@rectpuls,w);

figure
subplot(2,1,1)
plot(k,y);
axis([0 11 -0.2 2.2])
xlabel('Time (ms)')
ylabel('Voltage [V]')
title('Rectangular pulse')


syms t;
T = 8;
w0 = 2*pi/T;
N = 6;
n = 1:N;

% 1b Koeffesientene
a0 = 1/T*(int(2,t,0,1)+int(2,t,7,8));
a_n = 1/T * int(2*cos(w0*t*n),t,0,1)+int(2*cos(w0*t*n),t,7,9);
b_n = 0;

% 1c Plott greier
F = a0;
subplot(2,1,2)
xlabel('Time (ms)')
ylabel('Voltage [V]')
title('Fourier series')
hold on
for i=1:N
    F = F + a_n(i)*cos(i*w0*k);
    plot(k,F/4.5+0.5) % Må dele ig plusse på shot?
end
hold off

figure
hold on
plot(k,y)
plot(k,F/4.5+0.5)
xlabel('Time (ms)')
ylabel('Voltage [V]')
title('Fourier series and analog signal')
hold off

% 1d Frekvensrespons
fc = 500;
rc = 1/(2*pi*fc);
H = tf(1, [rc 1]);

figure
bode(H)








