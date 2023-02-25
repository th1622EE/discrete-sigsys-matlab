n =0:20;
x = zeros(1,length(n) );x(1)=1; % this is the impulse input
b = [1];
a = [1 -3/4 1/8];
yanalyt=2*(1/2).^n-(1/4).^n;
ymatlab = filter(b, a, x);
subplot(3, 1, 1);stem(n,x); ylabel('Input signal')
subplot(3, 1, 2); stem(n, yanalyt); ylabel('Output analytically')
subplot(3, 1, 3);stem(n, ymatlab); ylabel('Output using Matlab');
xlabel('n');
