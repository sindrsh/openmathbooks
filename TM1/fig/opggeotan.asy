import "../../inhopg" as inh;
import "../../geo" as geo;

size(7cm);

real r1 = 2;
real r2 = 6;

real s = sqrt(4r1*r2);
pair r2s = (s, r2-r1);
pair A = (0, -r1);
pair B = r1*(r2s)/abs(r2s);
pair C = r2s + (0, r2);
pair D = r2s - (0, r2);

draw(scale(r1)*unitcircle, red);
draw(shift(r2s)*scale(r2)*unitcircle, blue);

draw(A--D);
draw(A--B--C--D);
dott(A, "$A$", S);
dott(B, "$B$", 0.5S+1.5E);
dott(C, "$C$", N);
dott(D, "$D$", S);
