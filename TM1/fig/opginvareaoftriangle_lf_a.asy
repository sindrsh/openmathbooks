import "../../inhopg" as inh;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;
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


pair B = (x1, f(x1));
pair A = (x1/2, 0);
pair C = (2, -(4*sqrt(3)+7)/4);
pair P1 = B+1/3*(B-C);
pair P2 = 2B-A;
pair D = (B.x, 0);
pair O = (0, 0);
pair Ep = intersectionpoint(O--(100, 0), B--C);

mksq2(D, A);

draw(B--P1);
draw(B--P2);
draw(graph(f, -0, 1.4), blue);
draw(graph(g, -0, 1.7), green);
draw(A--B--D);
draw(B--Ep+0.35*(Ep-B));




label((1.4, f(1.4)), "$f$", NE);
label((1.7, g(1.7)), "$g$", N);

write(abs(B-C), 1/2*(sqrt(2)+3*sqrt(6)));
write(abs(C-B), 1/2*(sqrt(2)+3*sqrt(6)));


dott(A, "$A$", SW);
dott(B, "$B$", E);
dott(D, "$D$", S);
dott(O, "$O$", SW);
dott(Ep, "$E$", NE);

xaks(-1, 2.4, "$x$");
yaks(-0.2,2, "$y$");




