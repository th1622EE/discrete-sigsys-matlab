n =0:20; % 21 samples only
x = (1/2)*cos (pi/4*n-pi);
b = [2 .2 2]; %numerator vector in the frequency response
a = [1 .2 2.01 .2]; %denominator vector in the frequency response
y = filter (b, a, x);
subplot (2, 1, 1), stem (n, x); ylabel('Input signal')
subplot(2, 1, 2), stem (n, y); ylabel('Output using MATLAB')
xlabel('n');
