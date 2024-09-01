import inh;
import tri;
import figs;
unitsize(0.5cm);


transform sh = shift(2,-8);
Tri t = mktri(3,3,3);
draw(sh*(t.A--t.B--t.C--cycle));

