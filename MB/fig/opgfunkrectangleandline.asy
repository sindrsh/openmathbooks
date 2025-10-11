import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(7cm);

real f(real x) {
	return -2x+9;
}



pair A = (0, 0);
pair B = (4, 0);
pair C = (4, 5);
pair D = (0, 5);
pair Ep = (2, 5);
pair F = (4, 1);

filldraw(F--C--Ep--cycle, arpenr);

draw(A--B--C--D);

draw(graph(f, 0, 4));

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NW);
dott(Ep, "$E$", NE);
dott(F, "$F$", E);

label("$f$", (1.5, 7.2));

mktcy(9, "9");

mkgrid((0,0), (5,10));

xaks(0, 5, "$x$", bex=1);
yaks(0, 10, "$y$", bex=1);





