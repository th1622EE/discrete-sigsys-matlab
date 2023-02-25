A = [0 1; -1 -1]; B = [0 0; 1 1]; C = [-1 -1]; D = [1 1];
[numi den] = ss2tf(A, B, C, D, 1)%for the numerator of H11(z)
[num2 den] = ss2tf(A, B, C, D, 2)%for the numerator of H12(z)
