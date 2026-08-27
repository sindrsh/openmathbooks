import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(10,8,6);

dv(t.C,t.A, t.B, "$u$", sc=1, 0.5N+W);

draw(t.A--t.B, L="6", S);
draw(t.A--t.C, L="8", W);
draw(t.C--t.B, L="10", NE);

label(t.A,"$A$", SW);
label(t.B,"$B$", SE);
label(t.C,"$C$", NW);
