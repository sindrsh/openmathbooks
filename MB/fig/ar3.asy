import "../../inh" as inh;
import figs;
import "../../geo" as geo;
unitsize(0.6cm);

real c = 2;
real h = 4;
real d = 6;

filldraw((0,0)--(c,0)--(d,h)--cycle,arpeno);

draw((d,0)--(d,h),dotted,L=(string) h,align=E);
draw((0,0)--(c,0),L=(string) c,align=S);
draw((c,0)--(d,0),dotted);
mksq2((d,0),(0,0));


