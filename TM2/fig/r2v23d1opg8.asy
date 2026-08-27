import "../../inh" as inh;
import "../../geo" as inh;
import "../../drwgrph" as grph;

size(5cm);

real f(real x) {
	return cos(2x);
}

xaks(-pi/3, pi/3, l="$x$");
yaks(-1/2, 1.1, pi/3, l="$y$");

pair A = (-pi/6, f(-pi/6));
pair B = (pi/6, f(pi/6));

filldraw(A--graph(f, -pi/6, pi/6)--B--cycle, arpenr);
draw(graph(f, -pi/3, pi/3), blue);
draw((-pi/3, 1/2)--(pi/3, 1/2), green);

label("$g$", (pi/3, 1/2), E);
label("$f$", (pi/3, f(pi/3)), NE);

