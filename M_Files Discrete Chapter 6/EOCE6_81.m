A = [-1 0; 0 -2]; B = [1; 1]; C = [1 1]; D = [0];
isv = [1; 0];%initial state vector
for n = 0:4%only the first five values
yn = C*isv
isvplus1 = A*isv + B*0; % 0 comes from zero input
isv = isvplus1
end
