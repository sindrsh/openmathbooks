import "../../inhopg" as inh;
import "../../geo" as geo;
size(3cm);

real a = 2;
real b = a*sqrt(3);
real c = sqrt(a^2+b^2);
Tri t = mktri(a, b, c);

label(O, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$",N);

label(1/2*t.C, "$2\sqrt{3}$", NW);
label(1/2*(t.C+t.B), "2", NE);

draw(O--t.B--t.C--O);
mksq2(t.C, t.B);

