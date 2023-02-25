[xref, n1] = xreflected (x, n);
[xe ne] = x1plusx2 (x, xref, n, n1);
[xo no] = x1plusx2 (x, - xref, n, n1);
% for plotting, we define the new indices a and b
a = min ([ne, no])
b = max ([ne, no])
c = -2; d = 2; %y-axis range
subplot (2, 2, 1);
stem (n, x); title ('The original signal'); xlabel ('n');
axis ([a b c d]);
subplot (2, 2, 2);
stem (n1,xref);
title ('Reflected signal'); xlabel ('n');
axis ([a b c d]);
subplot (2, 2, 3);
stem (ne, 0.5*xe); title ('Even signal'); xlabel ('n');
axis ([a b c d]);
subplot (2, 2, 4);
stem (no, 0.5*xo);
title ('Odd signal'); xlabel ('n'); 
axis ([a b c d]);
