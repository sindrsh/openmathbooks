import inh;
import figs;
import tri;
unitsize(0.6cm);


real c = 6;
real h = 5;
real d = 4;



filldraw((0,0)--(c,0)--(d,h)--cycle,arpenc);

draw((d,0)--(d,h),dotted,L=(string) h,align=W);
draw((0,0)--(c,0),L=(string) c,align=S);
mksq2((d,0),(d,h));


