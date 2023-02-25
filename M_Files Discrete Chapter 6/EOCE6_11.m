%For the first system
A = [0 1 0; 0 0 1; 6 -11 6]; B = [0;0;1]; C = [6 -9 9]; D = [1];
isv = [0; 0; 0];%initial state vector
n = 0:10;
x = (1.^n);
[y, v] = dlsim(A, B, C, D, x, isv); % dlsm: discrete linear system simulation
subplot(2, 2, 1);
stem(n, y); ylabel('First representation');
%For the second system
A = [0 5 2; 0 3 2; 0 0 2]; B = [1; 1; 1]; C = [2 5 2]; D = [1];
[y, v] = dlsim(A, B, C, D, x, isv);% dlsm: discrete linear system simulation
subplot(2, 2, 2);
stem(n, y); ylabel('Second representation');
%For the third system
A = [2 0 0; 0 3 0; 0 0 1]; B = [1;1;1];C = [16 30 3];D = [21];
[y, v] = dlsim(A, B, C, D, x, isv); % dlsm: discrete linear system simulation
subplot(2, 2, 3);
stem(n, y); ylabel('Third representation'); xlabel('n')
%For the fourth system
A = [0 0 6; 1 0 -11; 0 1 6]; B = [6; -9; 9]; C = [0 0 1]; D = [1];
[y1,v1] = dlsim(A, B, C, D, x, isv); % dlsm: discrete linear system simulation
subplot(2, 2, 4);
stem(n, y); ylabel('Fourth representation');xlabel('n')

