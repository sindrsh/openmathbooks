import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);
real a = 3;
real b = 5;
real c = 6;

Tri t = mktri(a,b,c);
t.mkvec();
pair D = t.B-(b-a)*t.BC;

draw(t.A--t.B--t.C--t.A);
draw(t.A--D--t.B,dotted);

label(t.A, "$A$", SW);
label(t.B, "$B$", NE);
label(t.C, "$C$", N);
label(D, "$D$", SE);
