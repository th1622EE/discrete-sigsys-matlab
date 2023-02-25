N = [-2: 2]
x1 = stepsignal (1, -2, 2);
x2 = impulsesignal (-1, -2, 2);
x = x1+ x2;
[xref nref] = xreflected (x, n);
Subplot (1, 2, 1);
stem (n, x); xlabel ('n'); title ('The original signal');
subplot (1, 2, 2);
stem (nref, xref); title ('Original signal reflected');
xlabel ('n');
