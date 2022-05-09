import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;


real c = 40;
real h = 35;
real d = 30;


filldraw((0,0)--(c,0)--(d,h)--cycle,arpenc);

draw((d,0)--(d,h),dotted,L=(string) h,align=W);
draw((0,0)--(c,0),L=(string) c,align=S);
mksq2((d,0),(d,h));


