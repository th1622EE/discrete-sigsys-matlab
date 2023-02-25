m= 0: 400;
df = (m/400)*pi*4; % Range from 0 to 4pi
n = [.1 0 .2 .5]
d = [1]
x = freqz(n, d, df)
subplot(2, 1, 1);
plot(df, abs(x) );
ylabel('Magnitude plot');
subplot(2, 1, 2);
plot(df, angle(x) );
ylabel('Phase plot'); xlabel('Frequency');
