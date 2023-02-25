n = 0: 10;
num = [1];
den = [1 -1];
y0 = 1;% the given initial condition
ic = filtic(num,den,y0); %the derived initial condition
x = [1 zeros(1,(length(n)-1))];
y = filter(num, den, x, ic);
subplot(1, 2, 1); stem(n, x); xlabel('n'), ylabel('Input signal');
subplot(1, 2, 2); stem(n, y); xlabel('n'), ylabel('Output signal');
