import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(5,7,10);
pair D = (t.C.x, 0);

draw(t.A--t.B, L="$c$", S);
draw(t.A--t.C, L="$b$", NW);
draw(t.C--t.B, L="$a$", NE);
