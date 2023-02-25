N=50;
r=randn(1, N); % generating 1000 random numbers
rref=fliplr(r);
Rrr=conv(r,rref);
k=(-(N-1):(N-1));
title('Auto-correlation of the input noise with normal distribution');
stem(n, Rrr/Rrr(N)); xlabel('The lag k');
