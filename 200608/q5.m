sys = tf(1,[1,3,2]);
t = 0:0.1:10;
y = impulse(sys ,t);
subplot(3,1,1);
plot(t,y);

h = step(sys,t);
subplot(3,1,2);
plot(t,h);

f = cos(20 .* t) .* heaviside(t);
yf = lsim(sys,f,t);
subplot(3,1,3);
plot(t,yf);