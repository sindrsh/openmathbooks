import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 4cm, keepAspect=false);

real f(real x) {
	return (x-1)/(x^2-4);
}

xaks(-4, 4, l="$x$");
yaks(-5, 5, l="$f$");

draw((-2, 5)--(-2, -5), dashed);
draw((2, 5)--(2, -5), dashed);

draw(graph(f, -4, -2.15), green);
draw(graph(f, -1.85, 1.95), green);
draw(graph(f, 2.05, 4), green);
