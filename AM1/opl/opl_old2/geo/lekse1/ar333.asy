import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
unitsize(0.6cm);

real c = 4;
real h = 7;
real d = 6;


pair A = (0,0);
pair B = rotate(180)*(c,0);
pair C = rotate(180)*(d,h);
pair D = rotate(180)*(d,0);
filldraw(A--B--C--cycle,arpenr);

draw(D--C,dotted,L=(string) h,align=W);
draw(A--B,L=(string) c,align=N);
draw(B--D,dotted);
mksq2(D,B);


