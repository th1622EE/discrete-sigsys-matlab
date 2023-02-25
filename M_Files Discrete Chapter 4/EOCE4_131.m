n = 0: 10;
num = [1];
den = [1 -1];
y0=1;% this is the derived initial condition
x = [1 zeros(1, length(n)-1)];
y=filter(num, den,x,y0);
subplot(1, 2, 1); stem(n, x); xlabel('n'), ylabel('Input signal');
subplot(1, 2, 2); stem(n, y); xlabel('n'), ylabel('Output signal');
