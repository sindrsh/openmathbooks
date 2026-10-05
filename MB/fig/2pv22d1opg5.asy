import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 4cm, keepAspect=false);

mkgrid((0, 5), (-3, 3), dx=1, dy=1);

xaks(0, 5, "$x$", tck=true, tc=1);
yaks(-3, 3, "$y$", tck=true, tc=1);

real f(real x) {
	return x^2-5x+5;
}

draw(graph(f, 2.5-2, 2.5+2), green);
draw((0,-3)--(5, 2), blue);
