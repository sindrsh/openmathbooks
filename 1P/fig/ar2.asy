import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
unitsize(0.6cm);


real c = 4;
real h = 3;
real d = 3;



filldraw((0,0)--(c,0)--(d,h)--cycle,arpenc);

draw((d,0)--(d,h),dotted,L=(string) h,align=W);
draw((0,0)--(c,0),L=(string) c,align=S);
mksq2((d,0),(d,h));


