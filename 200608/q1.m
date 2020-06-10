syms t;
f1 = exp(-2) ^ abs(t);
fourier(f1)

syms w;
f2 = 1 / (1 + w ^ 2);
ifourier(f2)