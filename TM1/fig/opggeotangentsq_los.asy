import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(1.5cm);

draw(graph(f,0,2pi));
pair A = f(pi/2 +0.25);
pair B = A-2*(A.y,-A.x);
pair C = intersectionpoint(graph(f,0,2pi), B--O);
pair D = B + (C-B)/abs(C-B)^2*abs(A-B)^2;

draw(B--A, deepgreen);
draw(B--C, red);
draw(C--D, blue);
draw(A--O);
draw(C--A--D,dotted);

dott(A, "$A$", NW);
dott(B, "$B$", W);
dott(C, "$C$", SW);
dott(D, "$D$", SE);
dott(O, "$O$", S);

write(abs(A-B)^2, abs(B-C)*abs(B-D));
