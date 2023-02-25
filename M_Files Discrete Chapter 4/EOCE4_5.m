x1 = [1 1 1];
n1 = [-1 0 1];
x2 = [1 1];
n2 = [0 1];
ns = n1(1) + n2(1); % the starting minimum
ne= n1(length (x1)) + n2(length(x2)); % the ending maximum
n = [ns: ne];
x = conv(x1, x2);
[n' x'] % to display the convolution result with the index n
