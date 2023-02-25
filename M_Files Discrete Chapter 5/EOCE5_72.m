x1n= [1 1 0 1];n1x=0:3;
x2n=[1 1 0 1];n2x=0:3;
N=length (x1n);
n=1:N;
x1nref=x1n (N+1-n);
n1x = -fliplr (n1x);%the index changes too
x2nref=x2n (N+1-n);
n2x = -fliplr(n2x);
rx1x2=conv (x1nref,x2n);
rx2x1=conv (x1n,x2nref);
n=-3:3;
subplot (2,2,1);stem (n1x,x1n);title ('x1(n)');
xlabel ('n');
subplot (2,2,2);stem (n2x,x2n);title ('x2(n)');
xlabel ('n');
subplot(2,2,3);stem(n,rx1x2);title('cross-correlation between x1 and x2');
xlabel ('n');
subplot (2,2,4);stem (n,rx2x1);title ('cross-correlation between x2 and x1');
xlabel ('n');
