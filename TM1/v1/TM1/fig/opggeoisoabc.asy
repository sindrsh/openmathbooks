import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../drwgrph" as geo;

size(5cm);

pair f(real x) {
	return (cos(x), sin(x));
}

real v = pi/5.5;
pair A = f(-v);
pair B = f(pi/2);
pair C = f(pi+v);
pair D = f(pi+v+0.5);

draw(unitcircle);
draw(A--B--C--A);

draw(B--D, red);
draw(C--D, blue);
draw(D--A, green);

dott(A, "$A$", SE);
dott(B, "$B$", N);
dott(C, "$C$", SW);
dott(D, "$D$", S);

real a = abs(C-D);
real b = abs(A-D);
real c = abs(B-D);
write((a+b)/(2*cos(angle(B-C))));
write(c);

