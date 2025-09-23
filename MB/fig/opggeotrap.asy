import "../../inhopg" as inh;
import "../../geo" as geo;

size(7cm);

pair B = (10, 0);
pair Ep = (5, 0);
pair C = (10, 4);
pair D = (Ep.x, C.y);
filldraw(O--B--C--D--cycle, arpen);
draw(D--Ep);

mksq2(B, O);
mksq2(Ep, D);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NW);
dott(Ep, "$E$", S);
