% Supply the X(k) column array
Xk = [2 1 + exp (-j * 4 *pi/3) 1 + exp(-j *8 *pi/3)];
N = 3;
%fill the discrete signal x (n) with zeros
xn= zeros (N,1);
% supply the frequency index k.
k = 0: N-1;
% start the loop to compute x (n)
for n = 0: N-1;
xn = 1/N*(exp (-j * 2 * pi *n/N) .^k) * Xk'
end
