import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;


real c = 60;
real h = 27;
real d = 20;



filldraw((0,0)--(c,0)--(d,h)--cycle,arpeno);

draw((d,0)--(d,h),dotted,L=(string) h,align=W);
draw((0,0)--(c,0),L=(string) c,align=S);
mksq2((d,0),(d,h));


