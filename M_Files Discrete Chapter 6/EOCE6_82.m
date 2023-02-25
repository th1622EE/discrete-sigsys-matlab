A = [-1 0; 0 -2]; B = [1; 1]; C = [1 1]; D = [0];
isv = [1; 0]; %initial state vector
n = 0:10;
x = zeros(1,length(n));
[y, v] = dlsim(A, B, C, D, x, isv);% dlsm: discrete linear system simulation
stem(n, y); xlabel('n'); ylabel('Initial condition response');
