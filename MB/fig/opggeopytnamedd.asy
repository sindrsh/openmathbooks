import "../../inhopg" as inh;
import "../../geo" as geo;
size(3cm);

real a = sqrt(97);
real b = 4;
real c = sqrt(113);
Tri t = mktri(c, a, b);

label(O, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$",N);

label(1/2*(t.C+t.B), "$\sqrt{113}$", NE);
label(1/2*t.B, "4", S);


draw(O--t.B--t.C--O);
mksq2(t.A, t.C);

