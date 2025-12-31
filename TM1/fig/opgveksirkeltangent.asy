import "../../inhopg" as inhopg;
import "../../geo" as geo;

unitsize(1cm);
pair A = (1, sqrt(3));
pair B = (2, 0);
real s = 1.5;
pair A1 = A + s*(-A.y, A.x)/abs(A);
pair A2 = A - s*(-A.y, A.x)/abs(A);

dv(A, B, O, "$60^\circ$", NE);

draw(scale(2)*unitcircle);
draw(A1--A2);
draw(A--O--B);

dott(A, "$A$", NE);
dott(B, "$B$", E);
dott(O, "$S$", SW);
