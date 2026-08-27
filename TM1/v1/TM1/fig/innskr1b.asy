import innskr1;

size(7cm);

mksq2(t.Dt,t.rs);
mksq2(t.Ft,t.rs);
mksq2(t.Et,t.rs);

draw(t.A--t.B--t.C--t.A);
draw(t.Dt--t.rs^^t.Et--t.rs^^t.Ft--t.rs,Cyan);
draw(t.A--t.rs^^t.B--t.rs,deepgreen);

draw(t.C--t.rs,dotted);

ds(t.rs,t.r,blue);


dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(t.Dt, "$D$", S);
dott(t.Et, "$E$", NE);
dott(t.Ft, "$F$", NW);
dott(t.rs, "$S$", 2S+W);



