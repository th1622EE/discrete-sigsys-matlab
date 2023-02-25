n = 0: 20;
num = [2 0 1];
den = [1 0 -1];
x = [ones(length(n))];
ym = filter(num, den, x);
ya = 3/4*(-1.^n) + 3/2*n.*(1.^n) + 1/4*(1.^n);
subplot (3, 1, 1), stem(n, x), ylabel('Input');
subplot (3, 1, 2), stem(n, ym), ylabel ('MATLAB output');
subplot (3, 1, 3), stem(n, ya); ylabel('Analytical');
xlabel ('n');
axis([0 20 0 40]);
