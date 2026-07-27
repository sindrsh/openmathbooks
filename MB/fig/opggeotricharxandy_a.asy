import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(5cm);

pair A = (0, 0);
pair B = (5, 1);
pair C = (2, 3);

Tri t = mktri(abs(C-B), abs(B), abs(C));
pair D = intersectionpoint(C--C+(0, -10), A--B);

filldraw(A--B--C--cycle, arpeng);
draw(C--D, dotted, L="$y$");

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", N);
dott(D, "$D$", S);

write(B.x*abs(C-D)/2, t.Ar);

mktc(0, "", y=-1);
mktc(B.x, "", y=-1);
draw((0, -1) -- (B.x, -1), L="$x$", N);
