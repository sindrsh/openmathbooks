import inh;
import figs;
unitsize(1cm);


real b = 5;
real h = 2;
pair A = (0,0);
pair B = (5,0);
pair D = (1,h);
pair C = (-0.5+b,h);

path p = A--B--C--D--cycle;
filldraw(p,arpen);

label("$b$", (b/2,h), align=N);
label("$a$", (b/2,0), align=S);
draw((D.x,0)--D, dotted, L="$h$",align=E);
mksq2((D.x,0),A);



