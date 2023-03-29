import "../../inhopg" as inh;
import "../../geo" as geo;
size(8cm);

Tri t = mktri(5, 3, 4);
Tri t2 = mktri(4, 5, 3, 2);
t2.rors(sh=(4,0));

mksq2(t.B, t.C);
draw(t.A--t.B--t.C--cycle);
draw(t2.A--t2.B--t2.C--cycle);
draw(t.C--t2.C);

label(1/2*(t.C+t2.C), "$\sqrt{50}$", NW);
label(1/2*(t.C+t.B), "$5$", NE);
label(1/2*(t.C+t.A), "$3$", W);

filldraw(t.A--t2.B--t2.C--t.C--t.A--cycle, arpeng);
