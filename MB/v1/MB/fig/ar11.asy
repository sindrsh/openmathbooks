import "../../inh" as inh;
import figs;
import "../../geo" as geo;
unitsize(0.6cm);

real c = 4;
real b = 5;
pair A = (0,0);
pair B = (c,0);
pair C = (c,b);
path p = A--B--C--cycle;
filldraw(p,arpen);

draw(B--C, L=(string) b,align=E);
draw(A--B, L=(string) c,align=S);

mksq2(B,A);

