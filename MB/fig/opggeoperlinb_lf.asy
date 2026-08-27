import "../../inhopg" as inhopg;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(4cm);

real a = 1.5;

real f(real x) {
	return a*x;
}

real g(real x) {
	return -1/a*x;
}

pair A = (0, 0);
pair B = (1, 0);
pair C = (1, f(1));
pair D = (-1, 0);
pair Ep = (-1, g(-1));

mksq2(B, A);
mksq2(D, Ep);

draw(graph(f, -0.5, 1.5), blue);
draw(graph(g, -1.5, 0.5), green);

draw(A--B, L="1", S);
draw(B--C, L="$a$", E);
draw(A--D, L="1", S);
draw(Ep--D, L="$\frac{1}{a}$");

dott(A, "$A$", S);
dott(B, "$B$", SE);
dott(C, "$C$", NW);
dott(D, "$D$", SW);
dott(Ep, "$E$", NE);

label("$f$", (1.5, f(1.5)), NE);
label("$g$", (-1.5, g(-1.5)), NW);

