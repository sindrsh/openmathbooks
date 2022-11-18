import "../../inhopg" as inh;
import "../../geo" as geo;

size(3cm);

Tri t = mktri(5,4,3);

dv(t.C,t.A, t.B, "$u$", N+W);

draw(t.A--t.B, L="3", S);
draw(t.A--t.C, L="4", W);
draw(t.C--t.B, L="5", NE);

label(t.A,"$A$", SW);
label(t.B,"$B$", SE);
label(t.C,"$C$", NW);
