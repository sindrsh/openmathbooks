import "../../inh" as inh;
import "../../drwgrph" as grph;

size(8cm, 4cm, keepAspect=false);

real f(real x) {
	return 2+3*cos(pi*x-pi);
}

mkgrid((-3, 3), (-1, 5));
xaks(-3, 3, l="$x$", tck=true);
yaks(-1, 5, l="$f$", tck=true);

draw(graph(f, -3, 3), blue);
