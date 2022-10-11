import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(6cm);

draw(graph(f, 0, pi/2)--O--(1,0));

real u = pi/8;
real v = pi/6;

pair A = f(u);
pair B = f(u+v);
pair C = (A.x, 0);
pair D = (B.x, 0);
pair Ep = A*cos(v);
pair F = intersectionpoint(D--B,O--A);
pair G = (C.x, F.y);
pair H= (1,0);

dv(A,C,O, "$u$", sc=0.25);
dv(B,Ep,O, "$v$", sc=0.2, al=0.75N+0.5E);

draw(Ep--B--O--A--C);
draw(B--D,dotted);
draw(F--G,dotted);

dott(A, "$A$", NE);
dott(B, "$B$", NE);
dott(C, "$C$", S);
dott(D, "$D$", S);
dott(Ep, "$E$", SE);
dott(F, "$F$", NW);
dott(G, "$G$", SW);
dott(O, "$O$", SW);
dott(H, "$H$", SE);

label("1", (0,0.5),W);


