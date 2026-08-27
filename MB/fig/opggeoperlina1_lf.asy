import "../../inhopg" as inhopg;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(7cm);

real a = 4;

real f(real x) {
	return a*x;
}

real g(real x) {
	return -1/a*x;
}

pair A = (0, 0);
pair B = (1, 0);
pair C = (1, f(1));
pair D = (-4, 0);
pair Ep = (-4, g(-4));

mksq2(B, A);
mksq2(D, Ep);

draw(graph(f, -0.1, 1.1), blue);
draw(graph(g, -4.25, 0.25), green);
draw(A--B, L="1", S);
draw(B--C, L="$4$", E);
draw(A--D, L="$4$", S);
draw(Ep--D, L="$1$");


dott(A, "$A$", N+0.5W);
dott(B, "$B$", SE);
dott(C, "$C$", NW);
dott(D, "$D$", SW);
dott(Ep, "$E$", N);

label("$f$", (1.1, f(1.1)), NE);
label("$g$", (-4.25, g(-4.25)), NW);

