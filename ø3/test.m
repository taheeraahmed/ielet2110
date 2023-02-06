clear all 
close all 
clc 

fs = 100;
T=2;
w0 = 2*pi/T;
k=0:1/fs:5-1/fs;
y=square(w0*k,50)+1;
figure 
plot(k,y)

syms t
N=5;
n=1:N;

a0 =(2/T)*(int(2,t,0,1)+int(2,t,7,8));
an =(2/T)*(int(2*cos(n*w0*t),t,0,1)+int(2*cos(n*w0*t),t,7,8));
bn =(2/T)*(int(1*sin(n*w0*t),t,0,1)+int(-1*sin(n*w0*t),t,1,2));

F = a0/2;
figure
hold on
plot(k,y)
for i=1:N
    F = F + an(i)*cos(i*w0*k)+bn(i)*sin(i*w0*k);
    plot(k,F)
end
hold off
grid on