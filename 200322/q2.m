sys = tf([2,1],[1,4,3]);
t = 0 : 0.1 : 10;
y = impulse(sys,t);
subplot(3,1,1)
plot(t,y)   

y = step(sys, t);
subplot(3,1,2)
plot(t, y);

ft = 4 * sin(2 * pi * t) .* heaviside(t);
y = lsim(sys,ft,t);
subplot(3,1,3)
plot(t,y)