import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

Tri t = mktri(5,7,10);
pair D = (t.C.x, 0);

mksq2(D,t.C);

draw(t.A--t.B--t.C--cycle);
draw(D--t.C,dotted, L="$h$");
draw(D--t.B, L="$c-d$", N);
draw(t.A--D, L="$d$", N);
draw(t.A--t.C, L="$b$", NW);
draw(t.C--t.B, L="$a$", NE);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", N);
dott(D, "$D$", S);
