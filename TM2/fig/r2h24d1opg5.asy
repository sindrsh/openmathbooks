import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;
size(6 cm);

real f(real x) {
	return 2*sin(pi/4*x-pi/2)-1;
}

mkgrid((0, 12), (-4, 2));
xaks(-0, 12, l="$x$", tck=true, tc=2, bex=1.05);
yaks(-4, 2, l="$y$", tck=true, bex=1.5);

draw(graph(f, 0, 12), blue, L=Label("$f$", position=Relative(1)));

