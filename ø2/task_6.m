n = (-10:1:10);
unitstep = n>=0;
stem(n, unitstep);
grid on;
set(gca, 'YAxisLocation', 'origin')