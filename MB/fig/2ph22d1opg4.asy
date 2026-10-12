import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 4cm, keepAspect=false);

mkgrid((-1, 6), (-4, 6), dx=1, dy=1);

xaks(-1, 6, "$x$", tck=true, tc=1);
yaks(-4, 6, "$y$", tck=true, tc=1);

real f(real x) {
	return x^2-5x+4;
}

draw(graph(f, 2.5-2.7, 2.5+2.7), green);
