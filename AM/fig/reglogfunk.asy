import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(6cm, 3cm, keepAspect=false);

real a = -5;
real b = 7;

real f(real x) {
	return 1/(1+5*exp(-x));
}

xaks(a, b, l="$x$");
yaks(-0.1, f(b), l="$f$", bex=1.05);

draw(graph(f, a, b), blue);
mktcy(1/2, "$\frac{a}{2}$");
