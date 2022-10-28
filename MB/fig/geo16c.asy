import inh;
import figs;
import tri;
unitsize(0.6cm);


real c = 7;
real h = 3;
real d = 9;


filldraw((0,0)--(c,0)--(d,h)--cycle,arpeno);

draw((d,0)--(d,h),dotted,L=(string) h,align=E);
draw((0,0)--(c,0),L=(string) c,align=S);
draw((c,0)--(d,0),dotted);
mksq2((d,0),(0,0));


