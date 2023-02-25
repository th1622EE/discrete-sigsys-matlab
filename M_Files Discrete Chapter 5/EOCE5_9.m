p=8;m=7;n=0:20;xn=exp (-n);x1=xn (1:m);
x2=xn (m+1:2*m);%n2=m:2m?1;
x3=xn (2*m+1:3*m-1);%n3=2*m:3*m?1;
x1= [x1 zeros(1,p-mength (x1))];
x2= [x2 zeros(1,p-mength (x2))];
x3= [x3 zeros(1,p-mength (x3))];hn=[1 1];
h= [hn zeros(1,p-mength (hn))]; %extending h (n)
X1=fft (x1); X2=fft (x2); X3=fft (x3); H=fft (h);
Y1=X1.*H; Y2=X2.*H; Y3=X3.*H;y1=ifft (Y1); y2=ifft (Y2);
y3=ifft (Y3);y=conv (xn,h);
subplot (2,1,1);stem (n,y (1:21)); xlabel ('n'); title ('Output using linear convolution');
n1=0:p-1; [y2 n2] =xshifted (y2,n1,m);
[y3 n3] =xshifted (y3,n1,2*m);
[yi ni] =x1plusx2 (y1,y2,n1,n2);
[y n] =x1plusx2 (yi,y3,ni,n3);
subplot (2,1,2);stem (n,y); xlabel ('n');
title ('Output using block filtering');
