import "../../inhopg" as inh;
import "../../geo" as geo;

size(2cm);

Tri t = mktri(2,2,2);

draw(t.A--t.C, L="2", NW);
draw(t.B--t.C, L="2", NE);
draw(t.A--t.B, L="2", S);
