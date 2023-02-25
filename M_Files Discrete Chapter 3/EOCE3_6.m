m =0:400;
k = (pi/400)*m;
n = [0 1 2];
x = [1 2 3];
X = ( (exp (-j*pi/400) ).^(m'*n) )*x';
% next we shift X, the transfer of x (n), by 3 units.
X = (exp(-j*3).^k').*X;
%let us shift x in real-time by 3 units
x_shifted = x; % no change in value
n_shifted = n+3; %index shift only
X_shifted = ( (exp(-j*pi/400) ).^(m'*n_shifted) )*x_shifted';
plot (k, abs(X_shifted)-abs(X) ); title('The error signal');
xlabel('Frequency');
