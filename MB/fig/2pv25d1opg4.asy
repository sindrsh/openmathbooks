import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(6cm);

pair f(real x) {
	return (cos(x), sin(x));
}

filldraw(graph(f, 0, pi)--cycle, arpen);
pair A = (2, 0);
pair B = (A.x+3, 0);
pair C = (A.x+1.5, 1);
pair D = (A.x+1.5, 0);

filldraw(A--B--C--cycle, arpeng);
mksq2(D, C);
draw(D--C, dashed);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", N);
dott(D, "$D$", S);

