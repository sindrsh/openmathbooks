import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

pair A = (-4, 0);
pair B = (A.x+12, 0);
pair C = (A.x, 5);
pair D = (2, 6);
pair BC = C-B;
pair Ep = intersectionpoint(D--D+100*(-BC.y, BC.x)/abs(BC), C--B);

Tri t = mktri(abs(B-C), abs(C-D), abs(D-B));
write(t.Ar);

mksq2(Ep, D);
draw(B--C, blue);
draw(D--Ep, green);

write(abs(Ep-D));
write(abs(Ep-D)*13/2);

dott(C, "$(-4, 5)$", NW);
dott(D, "$(2, 6)$", NE);
dott(B, "$(8, 0)$", S);
