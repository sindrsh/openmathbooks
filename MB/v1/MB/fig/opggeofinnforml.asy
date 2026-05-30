import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);
real a = 3;
real b = 4;
real c = 5;

Tri t = mktri(a,b,c);
pair D = (t.C.x, 0);


mksq2(t.C, t.B);
mksq2(D, t.C);
draw(t.A--t.B--t.C--t.A);
draw(D--t.C,dotted);

label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", N);
label(D, "$D$", S);
