import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(10*sqrt(3), 14, 4);


dv(t.C, t.A, t.B, "$30^\circ$", sc=2, 0.5W+0.2N);
draw(t.A--t.B--t.C--t.A);
draw(t.A--t.B, L="$4$", S);
draw(t.B--t.C, L="$10\sqrt{3}$", NE);
