import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(6cm);

real f(real x){
	return 1-x^2;
}

real a = 0.3;

pair O = (0, 0);
pair P = (a, f(a));
pair B = (0, 2*a^2+f(a));
pair A = (B.y/(2*a), 0);

xaks(0, A.x, l="$x$");
yaks(0, B.y, l="$f$");

filldraw(O--A--B--cycle, arpen);
draw(graph(f, 0, 1), red);

dott(O, "$O$", SW);
dott(A, "$A$", S);
dott(B, "$B$", W);
