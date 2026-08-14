import "../../inhopg" as inh;
import "../../drwgrph" as grph;

size(6cm, keepAspect=false);

real f(real x) {
	return x^3+x^2-2x;
}

xaks(-3, 2, l="$f$", tck=true);
yaks(-10, 4, l="$y$", tck=true, tc=2);

draw(graph(f, -2.9, 1.6));
filldraw(graph(f, -2, 0)--cycle, arpeng);
filldraw(graph(f, 0, 1)--cycle, arpeng);
