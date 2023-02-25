N=500;
nr=0:499;
ny=nr;
r=randn(1,N);
y=zeros(size(r)); % output initialized to zeros
for n = 2: 500
y(n)=r(n)-0.5*y(n-1);
end
rr=fliplr(r);
nrr=-fliplr(nr);
Ryr=conv(y, rr);
%k = ?(N?1):(N?1);
kmin=ny(1)+nrr(1);
kmax=ny(length(ny))+nrr(length(nrr));
k=kmin:kmax;
subplot(2, 1, 1);
stem(k, Ryr/Ryr(N)); axis([-1 15 -1 1.2]);
title('Approximation of impulse response using cross-correlation');
num = [1 0]; den=[1 0.5];
n=0: 500;
x=zeros(size(n)); x(1)=1;
[y,v]=dlsim(num, den,x);
yy=conv(y, x);
n=0:1000;
subplot(2, 1, 2); stem(n, yy); title('Actual impulse response');
axis([-1 15 -1 1.2]);
