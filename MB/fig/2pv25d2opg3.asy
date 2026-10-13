import "../../inhopg.asy" as inh;
import "../../geo" as geo;

size(7cm);

pair A = (0, 0);
pair B = (0, 20);
pair D = (0, 5);
pair C = (-40, 20);
pair Ep = (-10, 5);

draw(A--B--C--A);
draw(Ep--D);
mksq2(B, A);
mksq2(D, A);

label(1/2*(B+C), "$40$", N);
label(1/2*(Ep+D), "$10$", N);
label(1/2*(A+D), "$5$", E);


dott(A, "$A$", SE);
dott(B, "$B$", NE);
dott(C, "$C$", NW);
dott(D, "$D$", NE);
dott(Ep, "$E$", SW);
