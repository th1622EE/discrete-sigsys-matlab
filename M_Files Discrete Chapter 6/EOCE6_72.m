A = [1 0; 0 -1/2]; B = [0; 1]; C = [0 1]; D = [0];
isv = [0;1];%initial state vector
for n = 0:3%only the first four values
yn = C*isv
isvplus1 = A*isv + B*1; % 1 comes from unit step input
isv = isvplus1
end
