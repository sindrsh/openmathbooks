import midnorm1;

Tri t = mktri(a,b,c);
t.mkR();

pair D = 1/2*t.B;
pair F = 1/2*t.C;
pair Ep = t.B+1/2*(t.C-t.B);


mksq2(D,t.Rs);
mksq2(Ep,t.Rs);
mksq2(F,t.Rs);
draw(D--t.Rs^^F--t.Rs^^Ep--t.Rs,red);

ds(t.Rs,t.R);

draw(t.A--t.B--t.C--t.A);


dott(t.A, "$$", SW);
dott(t.B, "$$", SE);
dott(t.C, "$$", NE);
dott(t.Rs, "$$", 2N);
dott(D, "$$", S);
dott(Ep, "$$", NE);
dott(F, "$$", NW);




