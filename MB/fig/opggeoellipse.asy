import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

unitsize(0.3cm);

real a = 5;
real b = 3;
real c = sqrt(a^2-b^2);

pair P = (-c, 0);
pair Q = (c, 0);

real f(real x) {
	return b/a*sqrt(a^2-x^2);
}

real g(real x) {
	return -f(x);
}

filldraw(graph(f, -a, a)--graph(g, a, -a)--cycle, arpen);

pair A1 = (-a, 0);
pair A2 = (a, 0);
pair B1 = (0, -b);
pair B2 = (0, b);

