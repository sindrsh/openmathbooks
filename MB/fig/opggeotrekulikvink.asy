import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);
real a = 3;
real b = 5;
real c = 6;

Tri t = mktri(a,b,c);
pair D = (t.C.x, 0);

draw(t.A--t.B--t.C--t.A);

label(t.A, "$A$", SW);
label(t.B, "$B$", E);
label(t.C, "$C$", N);
