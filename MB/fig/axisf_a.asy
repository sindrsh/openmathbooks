import "../../inh" as inh;
import drwgrph;

size(4cm, 3cm, keepAspect=false);

real f(real x) {
	return 0.5*x^3-2x-10;
}

real a= -5;
real b = 5;

xaks(a, b, l="$x$");
yaks(f(a),f(b), l="$f$");
draw(graph(f,a,b), blue);
