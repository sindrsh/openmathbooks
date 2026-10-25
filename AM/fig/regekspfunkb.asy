import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(4cm, 4cm, keepAspect=false);

real a = -2;
real b = 2;

real f(real x) {
	return exp(-x);
}

xaks(a, b, l="$x$");
yaks(-0.5, f(a), l="$f$", bex=1);

draw(graph(f, a, b), blue);
mktcy(1, "$a$");
