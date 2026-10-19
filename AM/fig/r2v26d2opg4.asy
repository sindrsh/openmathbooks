import "../../inhopg.asy" as opginh;
import "../../drwgrph.asy" as drwgrph;

size(10cm);

mkgrid((0,20), (0,6), dx=2, dy=0.4);

real f(real x) {
	return -1.2*sin(0.31*x-2.83) + 4.8;
}

xaks(0, 20, "$x$", bex=1.05, tck=true, tc=2);
yaks(0, 6, "$f$", tck=true, tc=2);

draw(graph(f, 0, 20), blue);
