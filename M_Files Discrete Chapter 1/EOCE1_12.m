% calculating average power for x(n)
% The signal
x = [1 1 1 1 0]
N = 5; % the period
% implementing the equation for power 
pp = sum (abs (x).^2);
p = pp/N; % the average power
