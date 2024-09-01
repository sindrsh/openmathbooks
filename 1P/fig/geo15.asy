import inh;
import tri;
import figs;
size(7 cm);


real a = 2;
real b = 6;
real c = sqrt(a^2+b^2);
Tri t = mktri(a,b,c);
pair D = (t.C.x,0);

mksq2(D,t.A);
draw(t.A--t.B--t.C--cycle);
draw(D--t.C,dotted);

label("$A$", t.A, SW);
label("$B$", t.B, SE);
label("$C$", t.C, N);
label("$D$", D, S);

