import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

pair C = f(pi/3);
pair A = (-1, 0);
pair B = (1, 0);
draw(graph(f, 0, pi)--B);

draw(A--C--B, blue);
mksq2(C, B);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", N);
