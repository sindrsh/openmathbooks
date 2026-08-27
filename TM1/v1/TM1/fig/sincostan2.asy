import "../../inh" as inh;
import "../../geo" as geo;

size(6cm);

Tri t = mktri(9,5.5,4);
pair D = (t.C.x,0);

mksq2(D,t.C);

draw(t.A--D^^D--t.C,dotted);
draw(t.A--t.B--t.C--t.A);


dv(t.B,t.C,t.A,"$v$",0.5N+E);


dott(t.A,"$A$", SW);
dott(t.B,"$B$", SE);
dott(t.C,"$C$", NW);
dott(D,"$D$", SW);

