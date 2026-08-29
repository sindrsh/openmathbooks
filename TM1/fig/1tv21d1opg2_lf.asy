import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(3cm);

Tri t = mktri(6, 10, 8);

mksq2(t.B, t.A);
draw(t.A--t.B--t.C--t.A);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
