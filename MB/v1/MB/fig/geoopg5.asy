import "../../inh" as inh;
import "../../geo" as geo;
size(12cm);

real a = 3*2;
real b = 3*5;
real c = 3*6;
Tri t = mktri(a,b,c);

filldraw(t.A--t.B--t.C--cycle, arpen);

label("$A$", align=SW);
label("$B$", t.B, align=SE);
label("$C$", t.C, align=N);

draw(t.A--t.B,L=(string) c,align=S);
draw(t.B--t.C,L=(string) a,align=NE);
draw(t.A--t.C);

real sc = 1/3;
Tri t = mktri(sc*b,sc*c,sc*a);

t.rors(sh=(c+4,0));
filldraw(t.A--t.B--t.C--cycle, arpeng);

draw(t.A--t.B,L="2",align=S);
draw(t.B--t.C,L="5",align=SE);
draw(t.A--t.B--t.C--t.A);
label("$D$", t.A,align=SW);
label("$E$", t.B, align=SE);
label("$F$", t.C, align=N);


