import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(9cm);

pair A = (-4, 0);
pair B = (A.x+12, 0);
pair C = (A.x, 5);
pair D = (2, 6);
pair BC = C-B;
pair Ep = intersectionpoint(D--D+100*(-BC.y, BC.x)/abs(BC), C--B);
pair F = (-4, 6);
pair G = (8, 6);
pair H = (-4, 0);

mkgrid((-4, 8), (0, 6));

Tri t = mktri(abs(B-C), abs(C-D), abs(D-B));
write(t.Ar);

mksq2(Ep, D);
draw(B--C, blue);
draw(D--Ep, green);
draw(H--B--G--F--H);
draw(C--D--B);

write(abs(Ep-D));
write(abs(Ep-D)*13/2);

dott(C, "$E=(-4, 5)$", W);
dott(D, "$F=(2, 6)$", N);
dott(B, "$B=(8, 0)$", E);
dott(Ep, "$D$", S);
dott(F, "$D$", N);
dott(G, "$C$", N);
dott(H, "$A$", S);
