import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(5cm);

pair A = (-4, -4);
pair B = (4, 3);

pair P = intersectionpoint(A--B, (-5, 0)--(5, 0));

dv(B, (5, 0), P, 0.25N+E, sc=0.7);

draw(A--B, green);

pair C = (-4, 3);
pair D = (2, -4);

pair Q = intersectionpoint(C--D, (-5, 0)--(5,0));

dv(C,(-5, 0), Q, "$v$", 0.5N+W, sc=0.7);
draw(C--D, red);

xaks(-5, 5);
yaks(-4.2, 3);

label(B, "$f$", NE);
label(D, "$g$", SE);

pair A1 = A+0.9*(B-A);
pair B1 = (A1.x, 0);

pair A2 = C+0.075*(D-C);
pair B2 = (A2.x, 0);

dott(P, "$A$", S);
dott(B1, "$B$", S);
dott(A1, "$C$", NW);

dott(Q, "$D$", S);
dott(B2, "$E$", S);
dott(A2, "$F$", NE);

mksq2(B2, A2);
mksq2(B1, O);
draw(B1--A1);
draw(B2--A2);
