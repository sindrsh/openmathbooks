import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

real a = 1;
real b = a*sin(pi/12);
real c = sqrt(a^2-b^2);
real d = b^2/c;

Tri t = mktri(a,b,c);
t.mkvec();
real s = a*b/c;

pair D = (d, 0);
pair Ep = t.C-s*t.BC;
pair F = (Ep.x, 0);
pair G = 1/2*(D+Ep);

mksq2(F,O);

draw(O--t.B--t.C--cycle^^O--D--t.C--cycle, deepgreen);
draw(D--Ep--F,dotted);
draw(t.C--F,dotted);

dott(O, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NW);
dott(D, "$D$", S);
dott(Ep, "$E$", NE);
dott(F, "$F$", S);
dott(G, "$G$", 2N);

write(s/b,4/(sqrt(2)+sqrt(6)));
