import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(5cm);

real a = sqrt(3)-1;
real b = 2*sqrt(2);
real c = sqrt(b^2-a^2);

Tri t = mktri(a, b, c);

dv(t.B, t.C, t.A, "$15^\circ$", sc=0.76, 0.25N+E);
mksq2(t.B, t.A);
draw(t.A--t.B--t.C--t.A);


label("$2\sqrt{2}$", 1/2*(t.A+t.C), NW);
label("$\sqrt{3}-1$", 1/2*(t.B+t.C), E);

label("$A$", t.A, SW);
label("$B$", t.B, SE);
label("$C$", t.C, NE);


