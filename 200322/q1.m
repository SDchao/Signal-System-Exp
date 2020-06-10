t = -2 : 0.01 : 2;
f11 = heaviside(t) - heaviside(t - 1);
f12 = 2 * t .* (heaviside(t) - heaviside(t - 1));
f1 = conv(f11,f12) * 0.01;
subplot(2,1,1)
plot(-4 : 0.01 : 4 , f1)

f21 = cos(30 * t) .* (heaviside(t + 5) - heaviside(t - 5));
f22 = heaviside(t) - heaviside(t - 4);
f2 = conv(f21,f22) * 0.01;
subplot(2,1,2)
plot(-4 : 0.01 : 4 , f2)