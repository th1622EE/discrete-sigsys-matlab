A = [-2 0; 0 -3]; B = [0; 1]; C = [1 2]; D = [5];
ABminusB = A*B - B
ABtransplusC = (A*B)' + C
invA = inv(A)
AinvA = A*inv(A)
eigA = eig(A)
eigAA = eig(A*A)
CDBplusD = C*D*B + D
BCminusA = B*C-A
