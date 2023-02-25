m= 0: 400; k=(pi/400)*m;
n=0:2; x1=[2 3 4]; x2=[2 0 3];
x = 2*x1 + 3*x2; % the sum of the signals
X = ( (exp (-j*pi/400) ).^(m'*n) )*x';
X1 = ( (exp (-j*pi/400) ).^(m'*n) )*x1';
X2 = ( (exp (-j*pi/400) ).^(m'*n) )*x2';
Plot(k, abs(X)-abs(2*X1+3*X2) );
Xlabel('Frequency');
ylabel('Error in approximation');
