% Load the signal
[x,fs] = audioread('tale_pcm16000.wav');

% Define the filter
M = 255;
filter1 = [0.02, 0.04, 0.08, 0.12, 0.15, 0.16, 0.15, 0.12, 0.08, 0.04, 0.02];
filter2 = [0.02, 0.04, 0.08, 0.12, 0.15, -0.84, 0.15, 0.12, 0.08, 0.04, 0.02];
filter3 = fir1(M,[300,3400]*2/fs);

[H1, f1] = freqz(filter1, 1, 1024, fs); % 1024 is the number of points to evaluate the frequency response
[H2, f2] = freqz(filter2, 1, 1024, fs);
[H3, f3] = freqz(filter3, 1, 1024, fs);

% Filter the sound
y1=filter(filter1,1,x);
y2=filter(filter2,1,x);
y3=filter(filter3,1,x);

soundsc(y3,fs,16)
% Compute the Fourier Transform of the original signal
N = length(x);
X = fft(x);

% Compute the frequency axis
f = (0:N-1)*(fs/N);

% Compute the magnitude spectrum of the original signal
X_mag = abs(X);

% Repeat for the filtered signal f1
Y1 = fft(y1);
Y1_mag = abs(Y1);

% Repeat for the filtered signal f2
Y2 = fft(y2);
Y2_mag = abs(Y2);

% Repeat for the filtered signal f3
Y3 = fft(y3);
Y3_mag = abs(Y3);


% Plot the magnitude spectrum of the original signal and the filtered signal
figure(1);
subplot(4,1,1);
plot(f, X_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Original sound');
subplot(4,1,2);
plot(f, Y1_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Filtered f1 sound');
subplot(4,1,3);
plot(f, Y2_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Filtered f2 sound');


figure(2);
subplot(2,1,1);
plot(f1, abs(H1));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Filter 1 Frequency Response');
subplot(2,1,2);
plot(f2, abs(H2));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Filter 2 Frequency Response');

% Task 2d
figure(3);
subplot(2,1,1);
% Plot the magnitude response with linear scale
plot(f3, abs(H3));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Response Filter 3 (Linear Scale)');
% Plot the magnitude response with logarithmic scale
subplot(2,1,2);
plot(f3, 20*log10(abs(H3)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Response Filter 3 (Logarithmic Scale)');

% Task 2e
figure(4);
subplot(2,1,1);
plot(f, X_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Original sound');
subplot(2,1,2);
plot(f, Y3_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Filtered f3 sound');
