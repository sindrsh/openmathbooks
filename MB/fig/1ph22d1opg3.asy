import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(8cm, 4cm, keepAspect=false);

real f(real x) {
	return sqrt(x);
}

xaks(-10, 110, "$x$", bex=1);
yaks(-1, 11, "$y$", bex=1);

draw(graph(f, 0, 110), blue);
dott((4, 2), "$(4, 2)$", E);
dott((25, 5), "$(25, 5)$", NW);
dott((49, 7), "$(49, 7)$", NW);
dott((81, 9), "$(81, 9)$", NW);
dott((100, 10), "$(100, 10)$", SE);
