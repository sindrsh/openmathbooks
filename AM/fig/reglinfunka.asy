import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(4cm, 4cm, keepAspect=false);

real a = -5;
real b = 5;

real f(real x) {
	return x+1;
}

xaks(-5, 5, l="$x$");
yaks(f(a), f(b), l="$f$");

draw(graph(f, a, b), blue);
mktcy(1, "$b$");
