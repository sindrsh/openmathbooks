import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
size(5cm);

real f(real x) {
	return x^2;
}

real g(real x) {
	return sqrt(x);
}

real x1 = 1.2;

xaks(0, f(x1), l="$t$");
yaks(0, f(x1), l="$y$");

draw(graph(f, 0, x1), blue);
draw(graph(g, 0, f(x1)), green);

label((x1, f(x1)), "$f$",NE);
label((f(x1), x1), "$g$", NE);

draw((0,0)--(f(x1),f(x1)), dotted);

real a = 0.7;
real b = f(a);

draw((a,b)--(b, a), arrow=Arrow);

dott((a, b), "$A$", SE);
dott((b, a), "$B$", NW);
