% entering the starting point and the limits
n0 = -1; n1 = -3; n2 = 3;
n = [n1: n2]; % generating the index n
% the following will generate the step signal desired
x = [(n - n0) >= 0];
stem (n, x);
