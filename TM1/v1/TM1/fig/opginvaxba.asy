import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
size(5cm);

real f(real x) {
	return 1/x;
}

real a = -3;
real b = 5;

pair A1 = (a, -a);
pair A2 = (-a, a);
pair B1 = (-1, -1);
pair B2 = (b, b);

xaks(-1, 5, l="$x$");
yaks(-1, 5, l="$y$");

real x1 = 0.2;
real x2 = 1/x1;

draw(B1--B2, green);
draw(A1--A2, green);
draw(graph(f, x1, x2), blue);

label(B2, "$b$", NE);
label(A2, "$a$", SE);
label((x2, f(x2)), "$f$", N);



