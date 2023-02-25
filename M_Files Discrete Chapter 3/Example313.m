df = 0:pi/400:pi; % 401 frequency points
n = [1];
d = [1 -.1];
x = freqz(n, d, df);
subplot(2, 1, 1);
plot(df, abs(x) );
ylabel('Magnitude plot');
subplot(2, 1, 2);
plot(df, angle(x) );
ylabel('Phase plot'); xlabel('Frequency');
