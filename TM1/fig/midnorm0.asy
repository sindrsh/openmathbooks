import "../../inh" as inh;
import "../../geo" as geo;

size(6cm);

pair A = (0,0);
pair B = (4,0);

pair C = (2,1);
pair D = (2,-1);


mksq2((2,0),A);
draw(A--B);
draw(C--D, blue);


dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C.x);


