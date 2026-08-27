import "../../inhopg" as inh;
import "../../geo" as geo;

size(3cm);

Tri t = mktri(sqrt(3),2,1);

dv(t.A,t.B, t.C, sc=0.4,"$u$", SW);
mksq2(t.B, t.A);

draw(t.A--t.B, L="$1$", S);
draw(t.A--t.C, L="$2$", W);
draw(t.C--t.B, L="$\sqrt{3}$", NE);

label(t.A,"$A$", SW);
label(t.B,"$B$", SE);
label(t.C,"$C$", NW);
