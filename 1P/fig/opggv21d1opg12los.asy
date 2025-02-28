import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(1.5cm);
guide P = polygon(6);
draw(P);

pair A = point(P, 4);
pair B = point(P, 2);
pair C = point(P,3);

dv(B,C,A,"$v$",al=NE);
draw(A--B);
draw(A--O--C--B--O--point(P,1), dotted);
label(A, "$A$", W);
label(B, "$B$", NE);
label(C, "$C$", NW);
