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

step1 = 0.0000005;
step2 = 0.002;
step3 = 0.0025;
step4 = 0.004;

t1 = (0:step1:stop);  
t2 = (0:step2:stop);  
t3 = (0:step3:stop);  
t4 = (0:step4:stop);  

% Create plots
figure;
t = tiledlayout(2,2);
nexttile
plot(t1,x)
nexttile
plot(t2,x)
nexttile
plot(t3,x)
nexttile
plot(t4,x)