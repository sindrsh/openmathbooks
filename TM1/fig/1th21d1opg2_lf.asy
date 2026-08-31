import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(3cm);

Tri t = mktri(1, sqrt(2), 1);

mksq2(t.B, t.A);
draw(t.A--t.B--t.C--t.A);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);

label(1/2*(t.A+t.B), "1", S);
label(1/2*(t.B+t.C), "1", E);
label(1/2*(t.A+t.C), "$\sqrt{2}$", NW);
