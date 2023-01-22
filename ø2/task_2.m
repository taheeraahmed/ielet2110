% a
stop = 0.002;             
t = (0:0.000005:stop)';     

% b
f = 2000;
x = 5*sin(2*pi*f*t);

figure;
plot(t,x);
xlabel('time (s)');
set(gca,'xtick', 0:0.0001:stop)
title('Signal versus Time');
zoom xon;

%c 
% ????

% d 

step = [0.000005 0.002 0.0025 0.004];

for i = 1:size(step, 1)
    test = (0:step(i):stop);
    figure;
    plot(test,x);
end