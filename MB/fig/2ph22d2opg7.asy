import "../../inhopg.asy" as opginh;
import "../../drwgrph.asy" as drwgrph;
import "../../geo.asy" as geo;

size(5cm);

pair A = (0, 0);
pair B = (8, 0);
pair Ep = (5, 5);
pair C = Ep + 20/8*Ep;
pair D = C-(20, 0);
pair F = (Ep.x, 0);

filldraw(A--B--D--C--cycle, arpeng);
mksq2(F, Ep);
draw(F--Ep, dashed);

label("$8$", B/2, S);
label("$20$", 1/2*(D+C), N);
label("$5$", 1/2*(F+Ep), W);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NW);
dott(Ep, "$E$", W);
