import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

real a = 1;
real b = a*sin(pi/12);
real c = sqrt(a^2-b^2);
real d = b^2/c;

Tri t = mktri(a,b,c);

dv(t.C,O,t.B, "$15^\circ$", W, sc=0.2);

mksq2(O,t.C);

draw(O--t.B--t.C--cycle);
label(1/2*t.C, "$b$",W);
label(1/2*(t.C+t.B), "$a$",NE);
