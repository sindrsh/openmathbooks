import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;
size(7cm);


real b = 2.2;
real x1 = sqrt(3)/2;

real f(real x) {
	return x^2;
}

real g(real x) {
	return 1/3*x^3*(6*sqrt(3) + 8) + x^2*(-4*sqrt(3)-9) + 1/2*x*(7*sqrt(3) + 8);
}

real h(real x) {
	return (x^2-2x-5)*(x-2);
}

real k(real x) {
	return x^2-2x-5;
}

draw(graph(f, -1, 1.4), blue);
draw(graph(g, -0.25, 1.7), green);


label((1.4, f(1.4)), "$f$", NE);
label((1.7, g(1.7)), "$g$", N);

pair B = (x1, f(x1));
pair A = (x1/2, 0);
pair C = (2, -(4*sqrt(3)+7)/4);
pair P1 = B+1/3*(B-C);
pair P2 = 2B-A;
draw(B--P1);
draw(B--P2);

filldraw(A--B--C--cycle, arpenr);

write(abs(B-C), 1/2*(sqrt(2)+3*sqrt(6)));
write(abs(C-B), 1/2*(sqrt(2)+3*sqrt(6)));


dott(A, "$A$", SW);
dott(B, "$B$", E);
dott(C, "$C$", S);

xaks(-1, 2.4, "$x$");
yaks(C.y-0.2,2, "$y$");


Tri t = mktri(abs(B-C), abs(A-C), abs(B-A));
write(t.Ar);

write(abs(B-C));
write(abs(A-C));
write(abs(B-A));

