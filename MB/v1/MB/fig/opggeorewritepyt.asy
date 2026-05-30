import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

real a = 1;
real b = 5;
real c = sqrt(a^2+b^2);
Tri t = mktri(a, c, b);

label(O, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$",N);

draw(O--t.B--t.C--O);
mksq2(t.B, O);
