% 第一大题
f1 = @(t)heaviside(t);
figure(1)
fplot(f1,[-1,10])

f2 = @(t) 4 * exp(-0.5 * t) * cos(pi * t);
figure(2)
fplot(f2,[0,10])

f3 = @(t) (heaviside(t + 1) - heaviside(t - 1) + heaviside(t + 2) - heaviside(t - 2));
figure(3)
fplot(f3,[-10,10])

k = linspace(-10,10,20);
f4 = heaviside(k + 2) - heaviside(k - 5);
figure(4)
scatter(k,f4)

f5 = 7 .* power(0.6, k) .* cos(0.9 * pi .* k);
figure(5)
scatter(k,f5)

f6 = @(t) sin(t) / t;
figure(6)
fplot(f6)

% 第二大题
syms t;
figure(7)
hold on
fplot(f3(2 * t))
fplot(f3(4 - 2 * t))
fplot(diff(f3(4 - 2 * t)))
hold off