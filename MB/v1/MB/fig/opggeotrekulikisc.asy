import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(5,5,3);

draw(t.A--t.B--t.C--t.A);

label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", N);
