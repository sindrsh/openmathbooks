import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 4cm, keepAspect=false);

real f(real x) {
	return (4x-1)/(x^2+1);
}

xaks(-4, 4, l="$x$");
yaks(-5, 5, l="$g$");


draw(graph(f, -4, 4), blue);
