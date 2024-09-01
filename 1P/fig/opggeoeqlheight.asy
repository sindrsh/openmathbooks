import "../../inhopg" as inh;
import "../../geo" as geo;

size(3cm);
real a = 3;
real b = 3;
real c = 3;

Tri t = mktri(a,b,c);
filldraw(t.A--t.B--t.C--cycle,arpenr);

label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", N);
