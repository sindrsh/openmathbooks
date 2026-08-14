import "../../inhopg" as inh;
import "../../drwgrph" as grph;

size(7cm);

real f(real x) {
	return -2*cos(2x)-1;
}

mkgrid((-pi, 3pi/2), (-3, 1), dx=pi/2);

xaks(-pi, 3pi/2, l="$x$", bex=1.15);
yaks(-3, 1, l="$f$", tck=true, aex=1.1, bex=1.35);

draw(graph(f, -pi, 3*pi/2), blue);

mktc(-pi, "$-\pi$");
mktc(-pi/2, "$-\frac{\pi}{2}$");
mktc(pi/2, "$\frac{\pi}{2}$");
mktc(pi, "$\pi$");
mktc(3pi/2, "$\frac{3\pi}{2}$");



