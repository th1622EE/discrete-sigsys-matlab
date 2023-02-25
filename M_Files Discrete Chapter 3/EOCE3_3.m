m = [0:400]; n = [0:100]; p =400;
h = n.*(0.6.^n).*sin(n);
df = (pi/p)*m;
H = ( (exp (-j*pi/400) ).^(m'*n) )*h';
subplot(2, 1, 1); plot(df, abs(H) );
ylabel('Magnitude plot');
subplot(2, 1, 2); plot(df, angle(H) );
ylabel('Phase plot');
xlabel('Range from 0 to pi');
