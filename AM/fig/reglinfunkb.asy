import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(4cm, 4cm, keepAspect=false);

real a = -7;
real b = 7;

real f(real x) {
	return -0.5x+3;
}

xaks(a, b, l="$x$");
yaks(-1, f(a), l="$f$");

draw(graph(f, a, b), blue);
mktcy(3, "$b$");
