import median1;

real a = 4;
real b = 6;
real c = 7;

Tri t = mktri(a,b,c);

pair D = 1/2*t.B;
pair F = 1/2*t.C;
pair Ep = t.B+1/2*(t.C-t.B);
pair G = intersectionpoint(F--t.B,D--t.C);

draw(t.A--t.B--t.C--t.A);
draw(F--t.B^^Ep--t.A^^D--t.C,red);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);
dott(D, "$D$", S);
dott(Ep, "$E$", NE);
dott(F, "$F$", NW);
dott(G, "$G$", 2N+W);

