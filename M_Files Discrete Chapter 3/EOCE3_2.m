m=0:400;
df = (m/400)*2*pi; % Range from 0 to 2pi
n = [1]
d = [1 .1 .2]
x = freqz(n, d, df)
subplot(2, 1, 1);
plot(df, abs(x) );
ylabel('Magnitude plot');
subplot(2, 1, 2);
plot(df, angle(x) );
ylabel('Phase plot'); xlabel('Frequency');
