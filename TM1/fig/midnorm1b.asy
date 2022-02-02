import midnorm1;

Tri t = mktri(a,b,c);
t.mkR();

pair D = 1/2*t.B;
pair F = 1/2*t.C;
pair Ep = t.B+1/2*(t.C-t.B);


mksq2(D,t.Rs);
mksq2(F,t.Rs);
draw(D--t.Rs^^F--t.Rs,deepgreen);
draw(Ep--t.Rs,dotted);
draw(t.A--t.Rs^^t.B--t.Rs^^t.C--t.Rs,dashed);

ds(t.Rs,t.R);

draw(t.A--t.B--t.C--t.A);
dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(t.Rs, "$S$", 2N+0.4W);
dott(D, "$D$", S);
dott(Ep, "$E$", NE);
dott(F, "$F$", NW);




