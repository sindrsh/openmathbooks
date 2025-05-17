import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

pair C = f(pi/3);
pair A = (-1, 0);
pair B = (1, 0);
draw(graph(f, 0, pi)--B);

draw(A--C--B);
draw(C--O, dotted);

dv(A, O, C, "$u$", SW, sc=0.4);
dv(C, O, A, "$u$", E, sc=0.4);
dv(B, O, C, "$v$", S, sc=0.2);
dv(C, O, B, "$v$", NW, sc=0.2);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", N);
dott(O, "$O$", S);
