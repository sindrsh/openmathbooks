import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;


size(5cm, 3cm, keepAspect=false);

xaks(-1, 4, l="$x$");
yaks(-1, 16, l="$y$");

real f(real x) {
	return 2x+8;
}

real g(real x) {
	return x^3-x^2-4x+8;
}

draw(graph(f, -1, 4), blue);
draw(graph(g, -1, 3.2), green);

real a = 1;
mktc(a, "$a$");

dott((a, g(a)), "$Q$", NE);
dott((a, f(a)), "$P$", N);
