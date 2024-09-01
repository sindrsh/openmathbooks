import "../../inhopg" as inh;
import "../../geo" as geo;

size(6cm);

Tri t = mktri(5,7,10);
pair D = (t.C.x, 0);

mksq2(D,t.C);

draw(D--t.C,dotted, L="$h$");
draw(t.A--t.B);
draw(t.A--t.C, L="$b$", NW);
draw(t.C--t.B, L="$a$", NE);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", N);
dott(D, "$D$", S);
