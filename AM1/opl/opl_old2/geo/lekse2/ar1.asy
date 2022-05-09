import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

real c = 36;
real b = 20;
real a = sqrt(b^2+c^2);
pair A = (0,0);
pair B = (c,0);
pair C = (0,b);
path p = A--B--C--cycle;
filldraw(p,arpenr);

draw(A--C, L=(string) b,align=W);
draw(A--B, L=(string) c,align=S);

mksq2(A,C);

