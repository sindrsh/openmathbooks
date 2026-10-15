import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(4cm);

Tri t = mktri(sqrt(2), sqrt(3), (sqrt(6)+sqrt(2))/2);

draw(t.A--t.B--t.C--t.A);

dv(t.B, t.C, t.A, "$45^\circ$", NE,  sc=0.2);
dv(t.A, t.C, t.B, "$60^\circ$", NW, sc=0.2);
dv(t.A, t.B, t.C, "$75^\circ$", S, sc=0.2);

label("$\sqrt{3}$", 1/2*(t.C+t.A), NW);

write(abs(t.C));
