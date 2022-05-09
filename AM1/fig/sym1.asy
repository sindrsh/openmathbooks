import figs;
import tri;
import inh;

size(5cm);

real c = 3;
Tri t = mktri(2,2,c);

pair A = (c/2,-0.25);
pair B = (c/2,1.5);

filldraw(t.A--t.C--t.B--cycle,arpen,black);
draw(A--B,red);
