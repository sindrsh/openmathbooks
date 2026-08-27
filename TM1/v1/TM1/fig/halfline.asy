import "../../inh" as inh;

size(5cm);


pair A = (0,0);
pair B = (1,0);
pair C = rotate(40)*B;
pair Pm = rotate(20)*B;
pair P = 0.7Pm;

draw(B---A--C);
draw(A--Pm,blue);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(P, "$P$", N);



