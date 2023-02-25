n =0:10; % 11 samples only
x = (1/2)*cos(pi/4*n);
yssanalyt=(1/2*sqrt(2) )*cos(pi/4*n-pi/4);
b = [1]; %numerator vector in the frequency response
a = [1 0 -1]; %denominator vector in the frequency response
ymatlab = filter(b, a, x); subplot(3, 1, 1), stem (n,x); ylabel('Input signal')
subplot(3, 1, 2), stem (n, yssanalyt); ylabel('Output analytical')
subplot(3, 1, 3), stem (n, ymatlab); ylabel('Output using MATLAB');
xlabel('n');
