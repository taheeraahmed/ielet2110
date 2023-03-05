b = [0.02, 0.04, 0.08, 0.12, 0.15, 0.16, 0.15, 0.12, 0.08, 0.04, 0.02];
n=[0:63];

x125=sin(0.25*pi*n);
hold on
stem(n,x125,'b');

y125=filter(b,1,x125);
stem(n,y125,'r');
hold off

yticks([(-1:0.05:1)])
legend('Input signal','Output signal')