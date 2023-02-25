%calculating average power for x(n)
%The signal
x = [1 0.5 0]
N = 3; % the period
% implementing the equation for power
pp = sum (abs (x).^2);
p = pp/N; % the average power
