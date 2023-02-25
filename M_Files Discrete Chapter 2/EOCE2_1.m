n = 0:10; % generate only 11 samples
y1 = (sin(n)-n) + (sin(n)-2*n);
y2 = (sin(n)-n)-2*n;
y = y1 - y2; % the diff. vector of samples.
% adding all y values and taking the absolute values.
e = abs(sum (y));
