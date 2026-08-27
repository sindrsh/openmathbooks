import "../../inh" as inh;
import "../../geo" as geo;

size(6cm);

Tri t = mktri(3,5,6);

pair D = 1/2*(t.C);
pair Ep = (t.C.x,0);

t.mkR();

mksq2(Ep, t.C);
mksq2(D, t.Rs);

ds(t.Rs, t.R);

draw(t.A--t.B--t.C--t.A);
draw(t.C--t.Rs--D^^t.Rs--t.A,dotted);
draw(Ep--t.C,dotted);
dott(t.A,"$A$", SW);
dott(t.B,"$B$", SE);
dott(t.C,"$C$", NE);
dott(D,"$D$", NW);
dott(t.Rs,"$S$", S);
dott(Ep,"$E$", S);
