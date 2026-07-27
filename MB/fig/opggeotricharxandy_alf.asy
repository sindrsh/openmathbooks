import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(5cm);

pair A = (0, 0);
pair B = (5, 1);
pair C = (2, 3);

Tri t = mktri(abs(C-B), abs(B), abs(C));
pair D = intersectionpoint(C--C+(0, -10), A--B);
pair Ep = B+C-D;
pair F = C-D;
pair G = (0, Ep.y);

filldraw(A--B--C--cycle, arpeng);
draw(C--D, dotted, L="$y$");
draw(B--Ep--F--A, blue);

draw(Ep--G, dotted, L="$x$");
draw(G--F, dotted);

mksq2(G, Ep);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", N);
dott(D, "$D$", S);
dott(Ep, "$E$", NE);
dott(F, "$F$", W);
dott(G, "$G$", NW);

write(B.x*abs(C-D)/2, t.Ar);


