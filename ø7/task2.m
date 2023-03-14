[x,fs] = audioread('tale_pcm16000.wav');
soundsc(x,fs,16);

f1 = [0.02, 0.04, 0.08, 0.12, 0.15, 0.16, 0.15, 0.12, 0.08, 0.04, 0.02];
y1 = filter(f1,1,x);

[H, w] = freqz(f1);

figure(1);
plot(w, 20*log10(H));
xlabel('Angular frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Frequency Response');
grid on;
