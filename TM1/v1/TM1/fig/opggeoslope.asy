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
