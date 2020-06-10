B = conv([1 1], [1 4]);
A = conv([1 2 0], [1 3]);

[r,p,k] = residue(B,A);
r
p
k