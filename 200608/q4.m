B1 = [1 2];
A1 = [1 1 2 6];

B2 = [1 0 1];
A2 = [3 5 4 6];

sys1 = tf(B1, A1);
[p1, z1] = pzmap(sys1);

sys2 = tf(B2, A2);
[p2, z2] = pzmap(sys2);

subplot(2,1,1);
plot(real(p1),imag(p1),"bo", real(z1),imag(z1),"bx");
axis([-3 3 -3 3]);
grid;

subplot(2,1,2);
plot(real(p2),imag(p2),"bo", real(z2),imag(z2),"bx");
axis([-2 2 -2 2]);
grid;