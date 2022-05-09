import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

real c = 64;
real a = 20;
pair A = (0,0);
pair B = (c,0);
pair C = (0,-a);
path p = A--B--C--cycle;
filldraw(p,arpenc);

draw(A--C, L=(string) a,align=W);
draw(A--B, L=(string) c,align=N);

mksq2(A,B);

