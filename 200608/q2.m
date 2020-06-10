fs = 500; 
N = 512;
n = 0:N-1;
t = n / fs;
f = n * fs / N;
f1 = 0.5 * exp(-2) .^ t .* heaviside(t);
y1 = fft(f1, N);
subplot(2,2,1)
plot(f, abs(y1))
xlabel("Ƶ��")
ylabel("���")
title("F1������")

ph1 = 2 * angle(y1(1:N/2));
ph1 = ph1 * 180 / pi;
subplot(2,2,2)
plot(f(1:N/2),ph1(1:N/2));
xlabel("Ƶ��")
ylabel("���")
title("F1��λ��")

f2 = 0.5 * exp(-2) .^ (t - 1) .* heaviside(t - 1);
y2 = fft(f2, N);
subplot(2,2,3)
plot(f, abs(y2))
xlabel("Ƶ��")
ylabel("���")
title("F2������")

ph2 = 2 * angle(y2(1:N/2));
ph2 = ph2 * 180 / pi;
subplot(2,2,4)
plot(f(1:N/2),ph2(1:N/2));
xlabel("Ƶ��")
ylabel("���")
title("F2��λ��")
