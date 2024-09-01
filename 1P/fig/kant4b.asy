import inh;
import tri;
import figs;
unitsize(0.4cm);


transform sh = shift(0,0);
Tri t = mktri(3,sqrt(3^2+5^2),5);
draw(sh*(t.A--t.B--t.C--cycle));
mksq2(t.B,t.A);
