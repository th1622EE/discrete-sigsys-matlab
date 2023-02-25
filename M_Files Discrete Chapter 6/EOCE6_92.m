A = [0.5 0; 0 0.4]; B = [0; 1]; C = [0 1]; D = [0];
P = [1 0; 0 2];
Anew = P*A*inv(P);
Aeigenvalues = eig(A)
Aneweigenvalues = (Anew)
