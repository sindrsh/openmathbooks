import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(2cm);

pair f(real x){
	return (cos(x), sin(x));
}

pair A = (0, 0);
pair B = f(0);
pair C = f(pi/6);
pair D = 1/2*(B+C);
real v = pi/6;

mksq2(D, A);
draw(A--B--C--A);
draw(A--D, dashed);
dv(D, C, A, "$15^\circ$", sc=0.4, 0.5N+E);
dv(B, D, A, "$15^\circ$", sc=0.35, 0.25N+E);

dott(A, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NE);
label("$r$", 1/2*B, S);

