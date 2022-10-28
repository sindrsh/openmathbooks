import figs;
import tri;
import inh;

size(5cm);

real a = 3;
real b = 2;

path p = scale(a,b)*unitsquare;

pair A = (a/2,-0.25);
pair B = (a/2,b+0.25);

pair D = (-0.25,b/2);
pair C = (a+0.25,b/2);

filldraw(p,arpeng,black);
draw(A--B,red);
draw(C--D,blue);


