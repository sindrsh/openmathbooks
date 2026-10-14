import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 3cm, keepAspect=false);
xaks(0, 8, l="$x$");
yaks(0, 8/20, l="$f$");

real f(real x) {
	return 8/(x^2+20);
}

real a = 5;
mktc(a, "$a$");
filldraw(scale(a, f(a))*unitsquare, arpenr);

draw(graph(f, 0, 8), green);

