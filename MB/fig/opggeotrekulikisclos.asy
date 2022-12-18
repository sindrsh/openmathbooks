import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

Tri t = mktri(5,5,3);
draw(t.A--t.B--t.C--t.A);
label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", N);

t.rors((6,0));

pair D = 1/2*(t.A+t.B);

mksq2(D,t.A);
draw(D--t.A--t.C--D);
draw(D--t.B--t.C,dotted);


label(t.A, "$A'$", SW);
label(t.B, "$B'$", SE);
label(t.C, "$C'$", N);
label(D, "$D'$", S);
