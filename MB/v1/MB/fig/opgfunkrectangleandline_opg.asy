import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(3cm);


pair A = (0, 0);
pair B = (4, 0);
pair C = (4, 5);
pair D = (0, 5);

draw(A--B--C--D--A);

label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, NE);
label("$D$", D, NW);

label("4", 1/2*(A+B), S);
label("5", 1/2*(A+D), W);




