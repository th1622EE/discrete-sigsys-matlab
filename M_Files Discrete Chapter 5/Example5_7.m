integer=8;
N = 2.^integer; %number of samples in x (n)
Ts = 0.1; fs=1/Ts; %sampling period
NTs = N * Ts;
t = 0:Ts:2;
xn = [ones(1, length(t)) zeros(1, N-length(t))];
% fill zeros to get N sample
Xk = fft (xn); % the fft used to calculate the DFT
exponent = 2 * pi/N;
% Next choose a k range
k = 1:2*integer-1;
sf = ((1 - exp (-j*2*pi*k/N)) ./ (j*2*pi*k/NTs));% the scaling factor
%we have avoided division by zero. Xwappr at k=0 is Ts
Xwappr = [Ts sf].* Xk;
k = 0:2*integer-1;
% transforming into the frequency axis: the spacing is fs/N wappr=k*2*pi*fs/N;
% above is the approximate of X (w).
% next is the actual X (w)
wact = wappr(1, 2:length(wappr));%avoiding the zero for Xactual
% trying to avoid w = 0 (sin (w)/w)
Xwact = (2 * sin (wact) ./wact).*exp(-j*wact); % point by point division (./)
Xwact = [2 Xwact]; % X (w) at w = 0 is 2
wact = wappr;
subplot (2,1,1);plot (wact, abs (Xwact));title ('The actual Fourier transform');
axis ([0 30 0 3]);
subplot (2,1,2); plot(wappr, abs (Xwappr));
title ('The approximation using the DFT');
xlabel ('Frequency in radians/sec');axis([0 30 0 3]);
