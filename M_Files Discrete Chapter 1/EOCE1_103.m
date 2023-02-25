n = [-2: 2]
x1 = stepsignal (1, -2, 2) 
x2 = impulsesignal (-1, -2, 2) 
x = x1 + x2;
[xref, nref] = xreflected (x, n);
[xfinal nfinal] = x1plusx2 (x, xref, n, nref);
stem (nfinal, xfinal); title ('Original and the reflected added')
xlabel ('n');
