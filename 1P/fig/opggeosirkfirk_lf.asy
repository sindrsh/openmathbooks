import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(0.75cm);

real a = 4;
real r = 2.5;
pair B = (a, 0);
pair C = (a, a);
pair D = (0, a);
pair rs = (a/2, a-r);
pair Ep = rs + (0, r);
pair F = (a/2, 0);

filldraw(shift(rs)*scale(r)*unitcircle, arpeng);
//filldraw(O--B--C--D--cycle, white);
filldraw(O--B--C--D--cycle, arpen);

draw(Ep--F,dotted);
draw(O--rs,dotted);

dott(O, "$A$", SW);
dott(Ep, "$E$", N);
dott(rs, "$S$", E);
dott(F, "$F$", S);
