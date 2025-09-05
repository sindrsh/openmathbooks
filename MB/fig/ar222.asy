import "../../inh" as inh;
import figs;
import "../../geo" as geo;
unitsize(0.6cm);


real c = 6;
real h = 2;
real d = 2;



filldraw((0,0)--(c,0)--(d,h)--cycle,arpeno);

draw((d,0)--(d,h),dotted,L=(string) h,align=W);
draw((0,0)--(c,0),L=(string) c,align=S);
mksq2((d,0),(d,h));


