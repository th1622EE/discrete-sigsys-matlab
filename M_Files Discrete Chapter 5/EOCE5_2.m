integer=8;
N = 2.^integer; %number of samples in x (n)
Ts = 1/150;fs=1/Ts; %sampling period
NTs = N * Ts;
n=0:150; %n*Ts=1second for n=150.The record length taken from x (t)
xn = [exp (-10*n*Ts) zeros(1, N-length (n))];% fill with zeros to get N samples
Xk=fft (xn); % the fft used to calculate the DFT
% Next choose a k range
k = 1:2*integer-1;
sf = ((1 - exp (-j*2*pi*k/N))./(j*2*pi*k/NTs));% the scaling factor
Xwapprl = [Ts sf].* Xk; %First method of approximation
k=0:2*integer-1;
% transforming into the frequency axis: the spacing is fs/N
wappr=k*2*pi*fs/N;
% above is the approximate of X (w).
% next is the actual X (w)
Xwappr2=Ts*Xk;% Second method of approximation
wact = wappr;
Xwact =1./ (sqrt(wact.^2+100)); % point by point division (./)
subplot (3,1,1);plot (wact, Xwact);title('The actual Fourier transform');
axis([0 30 0 .15]);
subplot (3,1,2);plot(wappr,abs (Xwappr1));
title ('First method: approximation using the DFT');
axis([0 30 0 .15]);
subplot (3,1,3); plot (wappr, abs (Xwappr2));
title ('Second method: approximation using the DFT');
xlabel ('Frequency in radians/sec');axis ([0 30 0 .15]);
