import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
unitsize(0.6cm);

real c = 3;
real h = 2;
real d = 4;


pair A = (0,0);
pair B = reflect((0,-1),(0,1))*(c,0);
pair C = reflect((0,-1),(0,1))*(d,h);
pair D = reflect((0,-1),(0,1))*(d,0);
filldraw(A--B--C--cycle,arpenc);

draw(D--C,dotted,L=(string) h,align=W);
draw(A--B,L=(string) c,align=S);
draw(B--D,dotted);
mksq2(D,C);


