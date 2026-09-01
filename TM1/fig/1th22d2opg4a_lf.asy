import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(5cm);

Tri t = mktri(14, 16, 5);
Tri t2 = mktri(14, 16, 10);

draw(t.A--t.B--t.C--t.A);
dv(t.B, t.C, t.A, "$u$", NE, sc=1);

label("16", 1/2*(t.A+t.C), NW);
label("$x$", 1/2*(t.A+t.B), S);
label("14", 1/2*(t.B+t.C), E);



