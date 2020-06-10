y = 2 * wgn(1, 233, 0);
subplot(2,1,1);
plot(y);
title("白噪声");
n = length(y);
[acf, lags, bounds] = autocorr(y, n-1);
subplot(2,1,2);
plot(lags,acf);
title("自相关函数");