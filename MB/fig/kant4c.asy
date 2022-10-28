import inh;
import tri;
import figs;
unitsize(0.5cm);





transform sh = shift(3,-4);
Tri t = mktri(3,3,2);
draw(sh*(t.A--t.B--t.C--cycle));


