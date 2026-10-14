import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(8cm, 3cm, keepAspect=false);

real f(real x) {
	return 4*x^3-12*x^2-56*x+64;
}

xaks(-5, 7, l="$x$");
yaks(-200, 250, l="$y$");

draw(graph(f, -4.2, 6.5), green);

dott((1-sqrt(17), 0), "$(1-\sqrt{17}, 0)$", NW);
dott((1+sqrt(17), 0), "$(1+\sqrt1{7}, 0)$", SE);
dott((1, 0), "$(1, 0)$", NE);
