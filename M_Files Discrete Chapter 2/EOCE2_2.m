n = 0:10;
m = n;
x1 = n;
n = n + 2;
x1 = x1 +2;
y1 = sin(n) -x1;
y2 = sin(m)-x1;
y = y1 - y2;
e = abs(sum(y)) % difference between samples
