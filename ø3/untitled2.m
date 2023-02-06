fs = 100;                    % sample freq
D = [0 8]' ;     % pulse delay times
t = 0 : 1/fs : 10;        % signal evaluation time
w = 2;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);

figure
subplot(2,1,1)
plot(t,2*yp);
axis([0 11 -0.2 2.2])
xlabel('Time (ms)')
ylabel('Voltage [V]')
title('Rectangular pulse')

subplot(2,1,2)