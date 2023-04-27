

%1c


%1d
x4 = [1 -1 0.5 -1];
x8 = [x4 zeros(1,4)];

X4 = fft(x4);
X8 = fft(x8);

figure(1)
subplot(2,2,1);
stem(abs(X4));
xlabel('k');
ylabel('|X4(k)|');

subplot(2,2,2);
stem(abs(X8));
xlabel('k');
ylabel('|X8(k)|');

subplot(2,2,3);
stem(angle(X4));
xlabel('k');
ylabel('∠X4(k) (radianer)');

subplot(2,2,4);
stem(angle(X8));
xlabel('k');
ylabel('∠X8(k) (radianer)');

%1e
x4 = [1 -1 0.5 -1];
x32 = [x4 zeros(1, 28)];

X32 = fft(x32);

figure(2);
stem(abs(X32));
xlabel('Frekvensindeks (k)');
ylabel('Magnitude');
title('Stolpediagram av X32[k]');

[H, w] = freqz(x4, 1, 256, 'whole');
figure(3);
plot(w, abs(H));
xlabel('Digital Frekvens (rad/sample)');
ylabel('Magnitude');
title('DTFT av x4[n]');

% Sammenlign de to skissene
figure(4);
subplot(2,1,1);
stem(abs(X32));
xlabel('Frekvensindeks (k)');
ylabel('Magnitude');
title('Stolpediagram av X32[k]');

subplot(2,1,2);
plot(w, abs(H));
xlabel('Digital Frekvens (rad/sample)');
ylabel('Magnitude');
title('DTFT av x4[n]');

%1f
Xk = [-0.5, 0.5, 3.5, 0.5];
x_ifft = ifft(Xk);

disp('IDFT med ifft:');
disp(x_ifft.');
