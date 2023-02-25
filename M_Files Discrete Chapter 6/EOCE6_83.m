A = [-1 0; 0 -2]; B = [1; 1]; C = [1 1]; D = [0];
isv = [1; 0]; %initial state vector
n = 0:10;
x = (1.^n);
[y, v] = dlsim(A, B, C, D, x, isv); % dlsm: discrete linear system simulation
stem(n, y); xlabel('n'); ylabel('The step response');
The plot is in Figure 6.12.
