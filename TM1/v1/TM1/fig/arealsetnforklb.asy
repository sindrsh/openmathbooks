import "../../inh" as inh;
import "../../geo" as geo;

size(5cm);

Tri t = mktri(9,5.5,4);
pair D = (t.C.x,0);

mksq2(D,t.C);

draw(t.A--D^^D--t.C,dotted);
draw(t.A--t.B--t.C--t.A);

label("$A$", t.A, SW);
label("$h$", D+(t.C-D)/2, W);
label("$B$", t.B, SE);
label("$C$", t.C, N);
