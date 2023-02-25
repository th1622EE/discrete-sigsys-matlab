% entering the starting point and the limits
n0 = 5; n1 = -10; n2 = 10;
n = [n1: n2]; % generating the index n
% the following will generate the step signal desired
x = [(n- n0) >= 0];
Stem (n, x); xlabel ('n'); ylabel('Step at n = 5');
