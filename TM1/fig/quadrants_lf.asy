import "../../inhopg" as inhopg;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(6cm);

pair A = f(pi/6);
pair B = f(pi-pi/6);
pair D = (1.3, 0);

pair Ax = (A.x, 0);
pair Bx = (B.x, 0);


mksq2(Bx, B);

dv(Ax, B, O, sc=0.1, "$u$", NE);
dv(Bx, B, O, sc=0.2, "$v$", 0.5W, p=green);

draw(Bx--B--O);
draw(B--D);
draw(Bx--D);

dott(O, "$O$", S);
dott(B, "$C$", NW);
dott(Bx, "$A$", S);
dott(D, "$B$", S);
