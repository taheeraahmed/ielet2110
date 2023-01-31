% a
stop = 0.002;             
t = (0:0.000005:stop)';     

% b
f = 2000;
x = 5*sin(2*pi*f*t);

figure;
plot(t,x);
set(gca,'xtick', 0:0.0001:stop)
title('Task 2b: Signal versus Time');
zoom xon;

%c 
Ax = gca;
xt = Ax.XTick;
Ax.XTickLabel = xt/1000;
Ax.XLabel.String = 'Time (ms)';

% d 

stop = 2e-3;
f = 2000;
step = [50e-6 0.2e-3 0.25e-3 0.4e-3];

t_d1 = 0:step(1):stop;
t_d2 = 0:step(2):stop;
t_d3 = 0:step(3):stop;
t_d4 = 0:step(4):stop;

%Top two plots
x_d1 = 5*sin(2*pi*f*t_d1);
x_d2 = 5*sin(2*pi*f*t_d2);
x_d3 = 5*sin(2*pi*f*t_d3);
x_d4 = 5*sin(2*pi*f*t_d4);

figure;
title('Task 2d')
hold on;
plot(t_d1 * 1e-3,x_d1);
plot(t_d2 * 1e-3,x_d2);
plot(t_d3 * 1e-3,x_d3);
plot(t_d4 * 1e-3,x_d4);
hold off;