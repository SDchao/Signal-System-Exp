t = -1:0.05:1;
syms n
f1 = symsum(sin(n*t)/n,n,1,50);
f2 = symsum(sin(n*t)/n,n,1,100);
f3 = symsum(sin(n*t)/n,n,1,200);
f = symsum(sin(n*t) / n,n,1,1000);
hold on
plot(t,f1,'r');
plot(t,f2,'g');
plot(t,f3,'b');
plot(t,f,'k');