import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(5cm);

Tri t = mktri(2, 2, 2);
pair D = 1/2*t.B;

draw(D--t.C, dotted);
mksq2(D, t.C);

dv(t.A, D, t.C, "$30^\circ$", S+0.25W);
dv(t.C, D, t.A, "$60^\circ$", sc=0.25);
draw(t.A--t.B--t.C--t.A);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", N);
dott(D, "$D$", S);

