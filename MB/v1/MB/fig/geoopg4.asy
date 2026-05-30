import "../../inh" as inh;
import "../../geo" as geo;
size(12cm);

real a = 6;
real b = 4;
real c = 8;
Tri t = mktri(a,b,c);

label("$A$", align=SW);
label("$B$", t.B, align=SE);
label("$C$", t.C, align=N);

filldraw(t.A--t.B--t.C--cycle, arpen);

draw(t.A--t.B,L=(string) c,align=S);
draw(t.B--t.C,L=(string) a,align=NE);
draw(t.A--t.C,L=(string) b,align=NW);

real sc = 0.5;
Tri t = mktri(sc*a,sc*b,sc*c);

t.rors(sh=(c+2,0));

draw(t.A--t.B,L="4",align=S);
filldraw(t.A--t.B--t.C--cycle, arpenr);
label("$D$", t.A,align=SW);
label("$E$", t.B, align=SE);
label("$F$", t.C, align=N);


