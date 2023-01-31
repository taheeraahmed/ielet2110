t = 1e-3;
N = 10;

% 40 punkter Gange hvert element t/N
x = 1:40;
x = x*t/N;
disp(x)

one = ones(1,N);
zero = zeros(1,N);

y = [one, zero, one, zero];

plot(x,y);

ylim([-0.1 1.1])
grid on;
title('Task 4')