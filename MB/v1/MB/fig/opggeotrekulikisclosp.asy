import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

Tri t = mktri(5,5,3);
draw(t.A--t.B--t.C--t.A);
label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", N);

t.rors((6,0));

draw((4.5,0)--(4.5, t.C.y), dotted);
draw(t.A--t.B--t.C--t.A);

label(t.A, "$B'$", SW);
label(t.B, "$A'$", SE);
label(t.C, "$C'$", N);
