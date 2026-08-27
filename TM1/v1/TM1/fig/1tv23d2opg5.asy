import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(2cm);

pair f(real x) {
	return (cos(x), sin(x));
}

pair Sp = (0, 0);
pair C = (0, 1);
pair B = (1, 0);
pair A = f(-(pi-pi/3));

draw(unitcircle);
mksq2(Sp, C);


dv(Sp, A, B, "$30^\circ$", D=(-2pi, 0), al=0.2S+W);

draw(A--B--C--A);
draw(A--Sp--C);
draw(Sp--B);

dott(A, "$A$", SW);
dott(B, "$B$", E);
dott(C, "$C$", N);
dott(Sp, "$S$", W);

