import "../../inhopg" as inh;
import "../../geo" as geo;
size(3cm);

Tri t = mktri(5, 7, 6);

draw(t.A--t.B--t.C--t.A);
pair P = 2/3*t.B;
pair R = 2/3*t.C;

dott(t.A, "$O$", SW);
dott(t.B, "$A$", SE);
dott(t.C, "$B$", NE);
dott(P, "$P$", S);
dott(R, "$R$", NW);



