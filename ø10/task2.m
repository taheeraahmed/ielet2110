%2b
[s, Fs] = audioread('signal_pcm16000_2.wav');
segment = s(1:128);
window = hamming(128);
windowed_segment = segment .* window;
dft = fft(windowed_segment);
primitive_freq = 1 / (128 / Fs) * 1;

disp(['Primitive frequency: ', num2str(primitive_freq), ' Hz']);

%2c
x = s(1:128);
X = fft(x);

mag_spectrum = abs(X);
figure(1)
stem(mag_spectrum);
title('DFT Koeffesientene');
xlabel('n');
ylabel('Magntiude');

%2d 
mag_spectrum_2 = abs(dft);
figure(2)
stem(mag_spectrum_2);
title('DFT Koeffesientene');
xlabel('n');
ylabel('Magntiude');

%2e
[max_val, max_idx] = max(mag_spectrum);
fund_freq = (max_idx - 1) * Fs / 128;

[pks, locs] = findpeaks(mag_spectrum, 'MinPeakHeight', max(mag_spectrum)*0.5);
overtone_k = locs - 1;
overtone_digital_freq = overtone_k / 128 * Fs;
overtone_analog_freq = overtone_digital_freq / 2;

%2f
t = (0:length(x)-1)/Fs;
plot(t, x);
xlabel('Tid (s)');
ylabel('Amplitude');