n =0:10; % 11 samples only
x = (1/2)*cos(pi/4*n);
yssanalyt=0.5*1.36*cos(pi/4*n-1.05);
b = [1]; %numerator vector in the frequency response
a = [1 -.9]; %denominator vector in the frequency response
ymatlab = filter(b, a, x);
subplot(3, 1, 1), stem (n, x); ylabel('Input signal')
subplot(3, 1, 2), stem (n, yssanalyt); ylabel('Output analytical')
subplot(3, 1, 3), stem (n, ymatlab); ylabel('Output using MATLAB'); xlabel('n');
