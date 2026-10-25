import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(6cm, 3cm, keepAspect=false);

real a = -5;
real b = 7;

real f(real x) {
	return sin(x+1)+0.2;
}

xaks(a, b, l="$x$");
yaks(-0.9, 1.2, l="$f$", bex=1.15);

draw(graph(f, a, b), blue);
