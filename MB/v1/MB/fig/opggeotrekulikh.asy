import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);
real a = 3;
real b = 8;
real c = 7;

Tri t = mktri(a,b,c);
pair D = (t.C.x, 0);


mksq2(D, t.A,sc=0.5);
draw(t.A--t.B--t.C--t.A);
draw(t.B--D--t.C,dotted);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SW);
dott(t.C, "$C$", N);
dott(D, "$D$", SE);
