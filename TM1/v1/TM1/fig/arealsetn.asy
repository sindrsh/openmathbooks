import "../../inh" as inh;
import "../../geo" as geo;

size(6cm);

Tri t = mktri(4,5,8);

draw(t.A--t.B--t.C--t.A);

label("$A$", t.A, SW);
label("$B$", t.B, SE);
label("$C$", t.C, N);
