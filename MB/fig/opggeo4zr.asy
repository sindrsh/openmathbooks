import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;
size(5cm);

real b = 6;
real c = 8;
real a = sqrt(b^2 + c^2);

Tri t = mktri(a, b, c);
t.mkt();

pair Ep = intersectionpoint(t.rs--2t.rs-t.B, t.A--t.C);
pair F = intersectionpoint(t.rs--2t.rs-t.C, t.A--t.B);

mksq2(t.A, t.C);
ds(t.rs, t.r, green);

draw(t.A--t.B--t.C--t.A);
draw(Ep--t.B);
draw(t.C--F);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NW);
dott(Ep, "$E$", W);
dott(F, "$F$", S);
dott(t.rs, "$S$", NE);

write(4*abs(t.B-t.C)*t.r, sqrt(2)*abs(Ep-t.B)*abs(F-t.C));
