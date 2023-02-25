n=0:2;
x1 = [1 1 1];
x2 = [1 1 1];
y = conv(x1, x2);
subplot(1,3,1)
stem(n, x1);xlabel('n');ylabel('The first signal');
subplot(1,3,2); stem(n, x2);xlabel('n');ylabel('The second signal');
n=0:4;
subplot(1,3,3);stem(n,y);
xlabel('n');ylabel('The result of the convolution');
