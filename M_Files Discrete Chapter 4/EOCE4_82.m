num = [0 0 1];
den = [1 -3 2];
x = [1 zeros(1, 2)]; % the impulse input of 3 samples.
h = filter (num, den, x)% h(n) for only the first 3 samples
