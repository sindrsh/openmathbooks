import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(4cm);

Tri t = mktri(3, 4, 5);
t.mkR();

ds(t.Rs, t.R);
mksq2(t.C, t.B);
draw(t.A--t.B--t.C--t.A);

dott(t.Rs, "$O$", S);
dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", N);
