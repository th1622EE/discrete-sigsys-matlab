n = 0: 15;
num = [1];
den = [1 -.5 -.1 .2];
y0 = [1 2 3];% the given initial condition
ic = filtic(num,den,y0); %the derived initial condition
x = [ones(length(n))];
y = filter(num, den, x, ic);
subplot(1, 2, 1); stem(n, x); xlabel('n'), ylabel('Input signal');
subplot(1, 2, 2); stem(n, y); xlabel('n'), ylabel('Output signal');
