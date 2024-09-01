import "../../inh" as inh;
import "../../geo" as geo;
size(5cm);

Tri t = mktri(6,8,9);

draw(t.A--t.B--t.C--t.A);

pair D = t.B/2;
pair Ep = t.B+(t.C-t.B)/2;
pair F = t.C/2;

pair G = intersectionpoint(t.C--D,t.B--F);

draw(t.A--Ep ^^ t.B--F ^^ t.C--D,dotted);

dott(t.A,"$A$", SW);
dott(t.B,"$B$", SE);
dott(t.C,"$C$", N);
dott(D,"$D$", S);
dott(Ep,"$E$", NE);
dott(F,"$F$", NW);
dott(G,"$G$", 2E);




