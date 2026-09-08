import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(2,2,2);

draw(t.A--t.C, L="2", NW);
draw(t.B--t.C, L="2", NE);
draw(t.A--t.B);
label("$1$",(0.5, 0), N);
label("$1$",(1.5, 0), N);
pair D = (1, 0);
mksq2(D, t.C);
draw(D--t.C, dashed);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", N);
dott(D, "$D$", S);

