import "../../inhopg" as inh;
import "../../geo" as geo;
unitsize(0.5cm);

Tri t = mktri(5, 3, 4);
Tri t2 = mktri(8, 10, 6);
t2.rors(sh=(4,0));
filldraw(t.A--t2.B--t2.C--t.C--t.A--cycle, arpeng);
mksq2(t.A, t.C);
mksq2(t2.B, t2.A);

mksq2(t.B, t.C);
draw(t.A--t.B--t.C--cycle);
draw(t2.A--t2.B--t2.C--cycle);
draw(t.C--t2.C);

label(1/2*(t.C+t2.C), "$5\sqrt{5}$", NW);
label(1/2*(t.C+t.B), "$5$", NE);
label(1/2*(t.C+t.A), "$3$", W);



