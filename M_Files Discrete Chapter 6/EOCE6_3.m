A = [-1 0; 0 -2]; B = [-3 0; 0 4]; C = [1 1; 0	 2];
[Aeigvectors Aeigenvalues] = eig(A)
[Beigvectors Beigenvalues] = eig(B)
[AAeigvectors AAeigenvalues] = eig(A*A)
[BBeigvectors BBeigenvalues] = eig(B*B)
[Pofeigenvectors Cindiagonalform] = eig(C)
[PinvCPeigvectors PinvCPeigenvalues] = eig(inv (Pofeigenvectors)*C*P)
