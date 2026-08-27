import "../../inhopg" as inh;
import "../../geo" as geo;

size(3cm);

Tri t = mktri(5,4,3);

dv(t.C,t.A, t.B, "$u$", N+W);
dv(t.B, t.A, t.C, "$v$", S+0.5E);
mksq2(t.A, t.C);

draw(t.A--t.B, S);
draw(t.A--t.C, W);
draw(t.C--t.B, NE);

label(t.A,"$A$", SW);
label(t.B,"$B$", SE);
label(t.C,"$C$", NW);
