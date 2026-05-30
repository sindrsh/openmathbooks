import "../../inhopg" as inh;
import "../../geo" as geo;

size(3cm);
real a = 3;
real b = 3;
real c = 3;

Tri t = mktri(a,b,c);
pair D = t.B/2;

mksq2(D,t.C);

draw(t.A--t.B--t.C--cycle);
draw(D--t.C,dotted);



label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", N);
label(D, "$D$", S);
