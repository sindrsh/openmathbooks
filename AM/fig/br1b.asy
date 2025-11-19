import figs;
import inh;

unitsize(0.25cm);

path c = unitcircle;

real dx = 0.5;

filldraw(c,black);
filldraw(shift(2+dx)*c,black);
filldraw(shift(4+2dx)*c,black);
draw(shift(6+4dx)*c,black);
draw(shift(8+6dx)*c,black);
