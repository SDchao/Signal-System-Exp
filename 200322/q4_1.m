f=[];
i=1;
for t = -10:0.01:10
    y = 0;
    for n = 1:1:100000
        y = y + sin(n.*t)/n;
    end
    f(i) = y;
    i=i+1;
end
t = -10:0.01:10;
plot (t,f);