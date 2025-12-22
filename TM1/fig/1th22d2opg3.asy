import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(2cm);

pair f(real x) {
	return (cos(x), sin(x));
}

pair Sp = (0, 0);
pair C = f(pi/4);
pair B = (1, 0);
pair A = (-1, 0);

draw(unitcircle);

dv(B, C, Sp, "$45^\circ$", al=NE);

draw(A--B--C--A);
draw(B--C--Sp);
draw(Sp--B);

dott(A, "$A$", W);
dott(B, "$B$", E);
dott(C, "$C$", NE);
dott(Sp, "$S$", S);

