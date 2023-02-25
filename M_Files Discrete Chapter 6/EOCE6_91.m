A = [0.5 0; 0 0.4]; B = [0; 1]; C = [0 1]; D = [0];
n = 0:10;
x = (1.^n);
isv = [0; 0]; % initial state vector
[yold v] = dlsim(A, B, C, D, x, isv); subplot(2, 1, 1); stem(n, yold); title('The step response using the old system');
P = [1 0; 0 2];
Anew = P*A*inv(P);
Bnew = P*B;
Cnew = C*inv(P);
Dnew = D;
isvw = P*isv;
[ynew w] = dlsim(Anew, Bnew, Cnew, Dnew, x, isvw); subplot(2, 1, 2); stem (n, ynew); xlabel('n');
title('The step response using the new system');
