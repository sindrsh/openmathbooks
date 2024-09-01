import inh;
import figs;
unitsize(1cm);


real b = 3;
real h = 2;
pair A = (0,0);
pair B = (b,0);
pair D = (1,h);
pair C = (1+b,h);

filldraw(A--B--C--D--cycle,arpen);

label("$g$", (b/2,0), align=S);
draw((D.x,0)--D, dotted, L="$h$",align=E);

mksq2((D.x,0),A);

