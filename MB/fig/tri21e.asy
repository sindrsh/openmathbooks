import inh;
import figs;
size(6cm);

real a = 6;
real b = 4;
real h = 3;
pair A = (0,0);
pair B = (a,0);
pair D = (3,h);
pair C = (D.x+b,h);

filldraw(A--B--C--D--cycle,arpenr);

label((string) b, (D+(1/2*(C.x-D.x),0)), align=N);
label((string) a, (a/2,0), align=S);
draw((D.x,0)--D, dotted, L=(string) h,align=E);

mksq2((D.x,0),D);

