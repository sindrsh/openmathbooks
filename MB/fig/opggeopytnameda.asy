import "../../inhopg" as inh;
import "../../geo" as geo;
size(3cm);

real a = 9;
real b = 12;
real c = 15;
Tri t = mktri(c, a, b);

label(O, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$",N);

label(1/2*t.B, "9", S);
label(1/2*t.C, "12", W);

draw(O--t.B--t.C--O);
mksq2(O, t.C);

