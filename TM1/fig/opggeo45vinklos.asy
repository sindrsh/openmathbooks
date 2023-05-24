import "../../inhopg" as inh;
import "../../geo" as geo;
size(5cm);

pair B = (2,0);
pair C = (2,2);
pair D = (0,2);
pair Ep = (1,1);

real b = 0.9;


Tri t = mktri(sqrt(4-b^2), b, 2);

dv(Ep, B, t.C, "$v$", sc=0.2);

mksq2(t.C, t.B);

draw(t.C--Ep, dotted);
draw(O--Ep--B, dotted);
draw(t.A--t.B--t.C--cycle);
draw(O--B--C--D--O);
dott(Ep, "$E$", N);
dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(t.C, "$C$", NW);

draw(shift(1,0)*graph(f,0,pi), dotted);
