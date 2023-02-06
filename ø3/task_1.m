fs = 100;                    % sample freq
D = [0 8]' ;     % pulse delay times
k = 0 : 1/fs : 10;        % signal evaluation time
w = 2;                      % width of each pulse
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

a0 =(T/2)*(int(2,t,0,1)+int(2,t,7,8));
a_n = T/2 * int(2*cos(w0*t*n),t,0,1)+int(2*cos(w0*t*n),t,7,9);
b_n = 0;

F = a_0/2;
subplot(2,1,2)
hold on
for i=1:N
    F = F+a_0 + a_n(i)*cos(i*w0*k);
    plot(k,F/12) % Har gjort noe feil hvorfor må jeg dele på 12?
end
hold off

figure
hold on
plot(k,y)
plot(k,F/12)
hold off


