import "../../inhopg" as inh;
import "../../geo" as geo;

Tri t = mktri(3,5,4);
t.mkt();
size(4cm);

mksq2(t.Dt,t.rs);
mksq2(t.Ft,t.rs);
mksq2(t.Et,t.rs);

draw(t.A--t.B--t.C--t.A);
draw(t.Dt--t.rs^^t.Et--t.rs^^t.Ft--t.rs,Cyan);
draw(t.A--t.rs^^t.B--t.rs^^t.C--t.rs,red);
ds(t.rs,t.r,blue);


dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(t.Dt, "$D$", S);
dott(t.Et, "$E$", NE);
dott(t.Ft, "$F$", NW);
dott(t.rs, "$M$", NE);

write(t.r);



