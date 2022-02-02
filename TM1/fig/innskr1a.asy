import innskr1;

size(7cm);

mksq2(t.Dt,t.rs);
mksq2(t.Ft,t.rs);
mksq2(t.Et,t.rs);

draw(t.A--t.B--t.C--t.A);
draw(t.Dt--t.rs^^t.Et--t.rs^^t.Ft--t.rs,Cyan);
draw(t.A--t.rs^^t.B--t.rs^^t.C--t.rs,deepgreen);

ds(t.rs,t.r,blue);


dott(t.A, "$$", SW);
dott(t.B, "$$", SE);
dott(t.C, "$$", NE);
dott(t.Dt, "$$", S);
dott(t.Et, "$$", NE);
dott(t.Ft, "$$", NW);



