import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(5cm);

pair B = (3, 0);
pair C = (5, 7);
pair D = (-1, 5);

pair Ep = 1/2*B;
pair F = 1/2*(B+C);
pair H = 1/2*D;
pair G = 1/2*(D+C);

filldraw(O--B--C--D--cycle, arpen);
filldraw(Ep--F--G--H--cycle, white);
filldraw(Ep--F--G--H--cycle, arpenr);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NW);
dott(Ep, "$E$", S);
dott(F, "$F$", E);
dott(G, "$G$", N);
dott(H, "$H$", W);

