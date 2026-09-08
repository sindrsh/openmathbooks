import "../../inhopg.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

real R = 2;
real r = 1;

size(5cm);

real h(real x) {
	return sqrt(r^2-x^2);
}

real f(real x) {
	return h(x) + R;
}

real g(real x) {
	return R-h(x);
}

xaks(-r, r, l="$x$");
yaks(0, R+r, l="$y$");

draw(graph(f, -r, r));
draw(graph(g, -r, r));

mktc(-r, "$-r$");
mktc(r, "$r$");
