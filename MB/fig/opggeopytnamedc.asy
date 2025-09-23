import "../../inhopg" as inh;
import "../../geo" as geo;
size(3cm);

real a = 7;
real b = 24;
real c = sqrt(a^2+b^2);
Tri t = mktri(a, c, b);

label(O, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$",N);

label(1/2*t.C, "25", NW);
label(1/2*t.B, "24", S);

draw(O--t.B--t.C--O);
mksq2(t.B, t.A);

