% squre_wave
function sum = square_wave(n)
    t = linspace(0, 4 * pi, 1001);
    for k = 1: n
        for i = 1 : 1001
            t2 = t(k);
            tempSum = sin((2 * k - 1) * t2) / (2 * k - 1);
            sum(k) = tempSum;
        end
    end
end