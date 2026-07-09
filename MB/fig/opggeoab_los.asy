import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(7cm);

pair f(real x) {
	return (cos(x), sin(x));
}

real v = pi/6;
pair A = f(-v);
pair B = f(pi/2);
pair C = f(pi+v);
real dv = 0.5;
pair D = f(pi+v+dv);
pair Ep = f(pi-v-dv);
pair F = D+abs(D-C)*(D-A)/abs(D-A);
draw(unitcircle);
draw(A--B--C--A);

draw(B--D, red);
draw(C--D, blue);
draw(D--A, green);

draw(C--Ep, green);
draw(F--C--D--F, blue);
draw(Ep--B, blue);


dv(A, C, F, "$60^\circ$", black, sc=0.1, al=NE);
dv(A, B, C, "$60^\circ$", black, sc=0.1, al=NE);
dv(A, B, D, "$60^\circ$", black, sc=0.1, al=NE);
dv(B, C, D, "$60^\circ$", black, sc=0.12, al=N);
dv(F, C, A, "$u$", black, sc=0.5, al=W, D=(2pi, 0));
dv(Ep, B, C, "$u$", black, sc=0.5, al=N+0.5E);
dv(C, D, B, "$u$", black, sc=0.5, al=S);

dott(A, "$A$", SE);
dott(B, "$B$", N);
dott(C, "$C$", SW);
dott(D, "$D$", S);
dott(Ep, "$E$", NW);
dott(F, "$F$", S);

real a = abs(C-D);
real b = abs(A-D);
real c = abs(B-D);

write(c, a+b);
