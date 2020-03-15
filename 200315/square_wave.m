% squre_wave
function sums = square_wave(n)
    t = linspace(0, 4 * pi, 1001);
    for i = 1 : 1001
        sum = 0;
        for k = 1 : n
            t2 = t(i);
            tempSum = sin((2 * k - 1) * t2) / (2 * k - 1);
            sum = sum + tempSum;
        end
        sums(i) = sum;
    end
end