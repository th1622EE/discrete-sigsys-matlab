n = 0: 20;
num = [1 1];
den = [1 -1/2];
x = [ones (length(n))];
ymatlab = filter(num, den, x);
yanalyt = -3*(0.5.^n) + 4*(1.^n);
subplot (3, 1, 1), stem (n, x), ylabel ('Input');
subplot (3, 1, 2), stem (n, ymatlab), ylabel ('MATLAB output');
subplot (3, 1, 3), stem (n,yanalyt); ylabel ('Analytical');
xlabel ('n');