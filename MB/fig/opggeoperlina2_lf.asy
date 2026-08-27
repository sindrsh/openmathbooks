import "../../inhopg" as inhopg;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(12cm);

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
pair D = (-16, 0);
pair Ep = (-16, g(-16));

mksq2(B, A);
mksq2(D, Ep);

draw(graph(f, -0.1, 1.25), blue);
draw(graph(g, -17, 0.25), green);
draw(Ep--C, dotted);
draw(A--B, L="1", S);
draw(B--C, L="$4$", E);
draw(A--D, L="$16$", S);
draw(Ep--D, L="$4$");


dott(A, "$A$", N+0.5W);
dott(B, "$B$", SE);
dott(C, "$C$", NW);
dott(D, "$D$", SW);
dott(Ep, "$E$", N);

label("$f$", (1.25, f(1.25)), NE);
label("$g$", (-17, g(-17)), NW);

