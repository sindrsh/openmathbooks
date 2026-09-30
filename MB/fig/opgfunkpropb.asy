import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 4cm, keepAspect=false);

mkgrid((0, 10), (0, 12), dx=1, dy=3);

xaks(0, 10, "$x$", tck=true, tc=1);
yaks(0, 12, "$y$", tck=true, tc=3);

real f(real x) {
	return 12/x;
}

draw(graph(f, 1, 10), green);
