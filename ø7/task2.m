% Load the signal
[x,fs] = audioread('tale_pcm16000.wav');

% Define the filter
f1 = [0.02, 0.04, 0.08, 0.12, 0.15, 0.16, 0.15, 0.12, 0.08, 0.04, 0.02];

fs = 16000; % Sampling frequency
[H, f] = freqz(f1, 1, 1024, fs); % 1024 is the number of points to evaluate the frequency response

% Filter the signal
y1=filter(f1,1,x);

% Compute the Fourier Transform of the original signal
N = length(x);
X = fft(x);

% Compute the frequency axis
f2 = (0:N-1)*(fs/N);

% Compute the magnitude spectrum of the original signal
X_mag = abs(X);

% Repeat for the filtered signal
Y1 = fft(y1);
Y1_mag = abs(Y1);

% Plot the magnitude spectrum of the original signal and the filtered signal
figure(1);
subplot(2,1,1);
plot(f2, X_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Original Signal');
subplot(2,1,2);
plot(f2, Y1_mag);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum of Filtered Signal');


figure(2);
plot(f, abs(H));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Response of Lowpass Filter');
grid on;