import "../../inh" as inh;
import "../../geo" as geo;

size(5cm);

real b = 2;
real c = 5;

Tri t = mktri(sqrt(b^2+c^2), b, c);


label("$A$", t.A,SW);
label("$B$", t.B, SE);
label("$C$", t.C, NW);


draw(t.A--t.B--t.C--t.A);
mksq2(t.A, t.C);
label("katet", t.C/2, W);
label("katet", t.B/2, S);
label("hypotenus", 1/2*(t.C+t.B), NE);




