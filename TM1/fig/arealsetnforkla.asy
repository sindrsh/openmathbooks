import "../../inh" as inh;
import "../../geo" as geo;

size(5cm);

Tri t = mktri(5,3,6);

draw(t.A--t.B--t.C--t.A);

pair D = (t.C.x,0);
mksq2(D,t.C);

draw(D--t.C,dotted);

label("$A$", t.A, SW);
label("$h$", D+(t.C-D)/2, W);
label("$B$", t.B, SE);
label("$C$", t.C, N);
