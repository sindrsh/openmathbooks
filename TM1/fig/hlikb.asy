import "../../inh" as inh;
import "../../geo" as geo;

size(5cm);

real a = 5;
real b = 5;
real c = 7;

Tri t = mktri(a,b,c);

pair D = 1/2*t.B;

mksq2(D,t.C);

draw(t.A--t.B--t.C--t.A);
draw(D--t.C,blue);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(D, "$D$", S);
