import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

real c = 20;
real h = 67;
real d = 60;

filldraw((0,0)--(c,0)--(d,h)--cycle,arpeno);

draw((d,0)--(d,h),dotted,L=(string) h,align=E);
draw((0,0)--(c,0),L=(string) c,align=S);
draw((c,0)--(d,0),dotted);
mksq2((d,0),(0,0));


