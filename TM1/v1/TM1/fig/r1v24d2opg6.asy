import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(4cm, 4cm, keepAspect=false);

real f(real x){
	return -x^2+4;
}

xaks(0, 2, "$x$");
yaks(0, 4, "$f$");

draw(graph(f, 0, 2), blue);

real a = 1.5;

pair A = (0, 0);
pair B = (a, 0);
pair C = (a, f(a));
pair D = (0, f(a));

filldraw(A--B--C--D--cycle, arpeng);
dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", W);


