%We start with the solution using superposition
A = [0 1; -1 1]; B = [0; 1]; C = [-1 -1]; D = [1];
isv = [0; 0]; %initial state vector
n = 0:10;
x1 = (.1) .^n; x2 = (-.1).^n;
[y1, v1] = dlsim(A, B, C, D, x1, isv); % dlsm: discrete linear system simulation
[y2, v2] = dlsim(A, B, C, D, x2, isv);
y = y1 + y2;
subplot(2,1,1);stem(n,y); xlabel('n'); ylabel('The response due to both inputs using superposition');
% Both inputs are applied together next
A = [0 1; -1 1]; B = [0 0; 1 1];C = [-1 -1]; D = [1 1];
isv = [0; 0]; %initial state vector
n = 0:10;
x1 = (.1) .^n; x2 = (-.1) .^n;
x = [x1; x2];
[y, v] = dlsim(A, B, C, D, x, isv); % dlsm: discrete linear system simulation
subplot(2,1,2);stem(n,y); xlabel('n');
ylabel('The response due to both inputs applied together');
