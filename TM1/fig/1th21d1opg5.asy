import "../../inh" as inh;
import "../../drwgrph" as inh;

size(5cm);

real f(real x) {
	return (x+1)^2;
}

real g(real x) {
	return -x-2;
}

mkgrid((-3, 2), (-3, 4));

xaks(-3, 2, l="$x$");
yaks(-3, 4, l="$y$");

draw(graph(f, -3, 1), blue);
draw(graph(g, -3, 1), green);

label("$x+y=2$", (1, -3), E);
label("$(x+1)^2=y$", (1, 2), N + E);

dott((0, -2));
dott((-2, 0));

dott((-1, 0));
dott((-3, 4));
dott((1, 4));
