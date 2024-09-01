import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

real b = 1;
real a = 1/2*b*(sqrt(6)-sqrt(2));
real c = (sqrt(3)-1)*b;
Tri t = mktri(a, b, c);
t.mkvec();
pair D = 1/2*t.B;
pair CD = t.C-D;
pair Ep = intersectionpoint(D--t.C, t.B--t.B+ (-CD.y, CD.x));
pair F = t.B-Ep;
pair G = t.B + (-t.AC.y, t.AC.x)*sqrt(2)/2*a;
pair H = D - (t.AC.y, -t.AC.x)*sqrt(2)/4*a;


write(2*abs(D-Ep), a);

mksq2(G,t.B);
mksq2(Ep,t.B);
mksq2(F, t.A);

draw(t.C--D);
draw(t.A--t.B--t.C--cycle);
draw(Ep--t.B,dotted);
draw(O--F--D,dotted);
draw(G--t.B,dotted);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(D, "$D$", S);
dott(Ep, "$E$", NW);
dott(F, "$F$", S);
dott(G, "$G$", NW);
