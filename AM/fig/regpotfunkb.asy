import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(4cm, 4cm, keepAspect=false);

real a = 0;
real b = 2;

real f(real x) {
	return x^(1/3);
}

xaks(a, b, l="$x$");
yaks(-0.075, f(b), l="$f$", bex=1.05);

draw(graph(f, a, b), blue);
