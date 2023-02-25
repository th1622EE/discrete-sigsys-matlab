m =[0:400] % 401 points for the transform
n = [0 1 2 3]; % the index for which x(n) is defined.
x = [1 1 1 1];% the values of x(n).
df = (pi/400)*m;
X = ( (exp (-j*pi/400) ).^(m'*n) )*x'; % ’indicates transpose
subplot(2, 1, 1);
plot (df, abs (X) )
ylabel('Magnitude plot');
subplot(2, 1, 2);
plot(df, angle(X) );
ylabel('Phase plot'); xlabel('Frequency');
