import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(5.5cm);

pair p(real x) {
	return (cos(x), sin(x)+2);
}

real f(real x) {
	return x^2+3/4;
}

pair A = p(-pi/6);
pair B = p(pi+pi/6);
pair Sp = (0, 2);

ds(Sp, 1);

draw(graph(f, -1.5, 1.5), blue);

filldraw(Sp--B..(0,1)..A--cycle, arpeng);

dott(A, "$A$", SE);
dott(B, "$B$", SW);

