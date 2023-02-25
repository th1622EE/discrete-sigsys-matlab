%We will compute the correlation using convolution
n1=0:9;n2=9:18;n3=-4:5;n4=-9:0;
x1=ones(size(n1));% x1(n) with 10 ones
x2=x1; x3=x1; x4=x1;%all signals filled with 10 ones
x1ref=fliplr(x1); x2ref=fliplr(x2);% reflecting the signals
x3ref=fliplr(x3); x4ref=fliplr(x4);
n1ref=-fliplr(n1); n2ref=-fliplr(n2);% reflecting indices and changing sign
n3ref=-fliplr(n3); n4ref=-fliplr(n4);
% minimum index for the length of the correlation result
k1min=n1(1)+n1ref(1);
k1max=n1(length(n1))+n1ref(length(n1ref));% maximum length
Rx1x1=conv(x1, x1ref);% the cross-correlation result
k1=k1min:k1max;
k2min=n1(1)+n2ref(1);
k2max=n1(length(n1))+n2ref(length(n2ref));
k2=k2min:k2max;
Rx1x2=conv(x1, x2ref);
k3min=n1(1)+n3ref(1);
k3max=n1(length(n1))+n3ref(length(n3ref));
k3=k3min:k3max;
Rx1x3=conv(x1, x3ref);
k4min=n1(1)+n4ref(1);
k4max=n1(length(n1))+n4ref(length(n4ref));
k4=k4min:k4max;
Rx1x4=conv(x1, x4ref);
subplot(2, 2, 1); stem(k1, Rx1x1); title('Rx1x1');
subplot(2, 2, 2); stem(k2, Rx1x2); title('Rx1x2');
subplot(2, 2, 3); stem(k3, Rx1x3); title('Rx1x3');
xlabel('The lag k');
subplot(2, 2, 4); stem(k4, Rx1x4); title('Rx1x4');
xlabel('The lag k');
