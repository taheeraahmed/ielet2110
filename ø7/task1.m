b_k = [1 1 1];

[H, w] = freqz(b_k);

figure(1);
plot(w, 20*log10(H));
xlabel('Angular frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Frequency Response');
grid on;

figure(2);
subplot(2,1,1); % create a subplot for magnitude response
plot(w, abs(H));
xlabel('Frequency (\omega/\pi)');
ylabel('Magnitude');
title('Magnitude Response');
set(gca,'XScale','log')
set(gca,'YScale','log')
grid on;


subplot(2,1,2); % create a subplot for phase response
plot(w, angle(H));
xlabel('Frequency (\omega/\pi)');
ylabel('Phase (rad)');
title('Phase Response');
set(gca,'XScale','log')
set(gca,'YScale','log')
grid on;
