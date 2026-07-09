import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../drwgrph" as geo;

size(5cm);

pair f(real x) {
	return (cos(x), sin(x));
}

real v = pi/6;
pair A = f(-v);
pair B = f(pi/2);
pair C = f(pi+v);
pair D = f(pi+v+0.5);
pair Ep = rotate(120)*D;
pair F = D+abs(C-D)*(B-D)/abs(B-D);

draw(unitcircle);
draw(A--B--C--A);

draw(B--D, red);
draw(C--D, blue);
draw(D--A, green);

draw(C--Ep, red);
draw(B--Ep, green);
draw(Ep--A, blue);

dott(A, "$A$", SE);
dott(B, "$B$", N);
dott(C, "$C$", SW);
dott(D, "$D$", S);
dott(Ep, "$E$", NE);
dott(F, "$F$", NW);


real a = abs(C-D);
real b = abs(A-D);
real c = abs(B-D);
write((a+b)/(2*cos(angle(B-C))));
write(c);

