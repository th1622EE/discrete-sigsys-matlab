% supply the x (n) array in a column form N = 3;
xn = [1 0 1];
% initialize x (k) to a column of N zeros
Xk = zeros (N, 1);
%supply the index n
n = 0: N-1;
%starting the loop to calculate X (k);
for k = 0: N-1
Xk = (exp (-j*2*k*pi/N).^n) *xn'
end
