A = [2 9; 0 1]; B = [1 2; 0 1]; C = [1 0; 0 1];
Ainv = inv(A)
Binv = inv(B)
ABinv = inv(A*B)
BinvAinv = inv(B)*inv(A)
BCBC = B*C*B*C
CinvA = C*inv(A)
CAinv = inv(C*A)
BCinvA = inv(B*C)*A
