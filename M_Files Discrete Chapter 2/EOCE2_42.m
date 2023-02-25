x1 = [1 1 1]; x2 = [1 1 1];
n1=[0 1 2];
n2=[-2 -1 0];
sn1 = 0; % starting index for x1
sn2 = -2; % ending for x1
en1= 2; % starting for x2
en2 = 0; % ending for x2
sn = sn1 + sn2; % starting for y(n)
en = en1 + en2; % ending for y(n)
n = sn: en; % index for y(n).
y = conv(x1, x2);
subplot(1,3,1)
stem(n1,x1);xlabel('n');ylabel('The first signal');
subplot(1,3,2);stem(n2,x2);xlabel('n');ylabel('The second signal');
subplot(1,3,3);stem(n,y);
xlabel('n');ylabel('The result of the convolution');
