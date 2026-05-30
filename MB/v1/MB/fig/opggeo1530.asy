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

dv(t.A,D,t.C, "$15^\circ$", sc=0.2, SW);
dv(D,t.B,t.C, "$30^\circ$", sc=0.1, S+0.25W);

draw(t.C--D);
draw(t.A--t.B--t.C--cycle);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(D, "$D$", S);
