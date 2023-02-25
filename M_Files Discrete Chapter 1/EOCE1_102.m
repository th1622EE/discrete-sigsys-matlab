n = [-2: 2]
x = stepsignal (1, -2, 2) + impulsesignal (-1, -2, 2)
[xshif, nshif] = xshifted (x, n, 2);
subplot(1,  2, 1); stem(n, x); xlabel ('n'); 
title ('The original signal');
subplot (1, 2, 2)
stem (nshif, xshif); title ('The shifted signal');
xlabel ('n');
