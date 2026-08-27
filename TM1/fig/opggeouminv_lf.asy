import "../../inhopg" as inh;
import "../../geo" as geo;
size(3cm);

real a = 1;
real b = 2;
real c = sqrt(a^2+b^2);

Tri t = mktri(a,c,b);

dv(t.C,t.B,t.A,"$u$",0.25N+E,sc=0.4);
dv(t.B,t.A,t.C,"$v$",S+0.4W,sc=0.25);

draw(t.A--t.B--t.C--t.A);

mksq2(t.B, t.A);


label(t.A, "$A$", SW);
label(t.B, "$B$", SE);
label(t.C, "$C$", NE);



