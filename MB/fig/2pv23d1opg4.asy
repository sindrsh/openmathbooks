import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 5cm, keepAspect=false);

mkgrid((-1, 5), (-1, 6), dx=1, dy=1);

xaks(-1, 5, "$x$", tck=true, tc=1);
yaks(-1, 6, "$y$", tck=true, tc=1);

real f(real x) {
	return x^2-4x+5;
}

real g(real x) {
	return x+1;
}

real h(real x) {
	return -x+5;
}

draw(graph(f, 2-2.3, 2+2.3), red);
draw(graph(g, -1.2, 5), green);
draw(graph(h, -1.2, 5), blue);

label((5, g(5)), "$f$", NE);
label((-1.2, h(-1.2)), "$h$", NW);
label((3.5,3), "$g$", E);
