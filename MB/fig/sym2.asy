import figs;
import tri;
import "../../inh" as inh;

size(5cm);

real a = 4;
real b = 3;

path p = scale(a,b)*unitsquare;

pair A = (a/2,-0.25);
pair B = (a/2,b+0.25);

pair D = (-0.25,b/2);
pair C = (a+0.25,b/2);

pair A1 = (a/2, 0);
pair B1 = (a/2, b);
pair C1 = (a, b/2);
pair D1 = (0, b/2);


filldraw(p,arpeng,black);
draw(A--B,red);
draw(C--D,blue);

dott(A1, "$A$", SW);
dott(B1, "$B$", NE);
dott(C1, "$C$", NE);
dott(D1, "$D$", NW);
