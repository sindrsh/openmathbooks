import "../../inhopg" as inh;
import "../../geo" as geo;

size(3.5cm);

pair A = f(2pi/3);
pair B = f(-pi/6);
pair C = f(pi/4);
pair D = f(9pi/7);
pair P = intersectionpoint(A--B, C--D);

draw(A--B,red);
draw(D--C,blue);
draw(D--A,dotted);
draw(C--B,dotted);

draw(graph(f,0,2pi));

dott(A, "$A$", NW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", SW);
dott(P, "$P$", 2S);
