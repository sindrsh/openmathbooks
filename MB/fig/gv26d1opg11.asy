import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(5cm);

real x = 5;

pair B = (x+2);
pair C = (x, x-2);
pair D = (2, x-2);
pair Ep = (D.x, 0);
pair F = (C.x, 0);

mksq2(Ep, O);
mksq2(F, C);
draw(Ep--D, dashed);
draw(F--C, dashed);

filldraw(O--B--C--D--cycle, arpeng);

label("$x-2$", 1/2*(Ep+D), E);
label("$x-2$", 1/2*(Ep+F), N);
label("$2$", 1/2*Ep, N);
label("$2$", 1/2*(F+B), N);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NW);
