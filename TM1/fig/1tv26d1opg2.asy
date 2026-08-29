import "../../inh" as inh;
import "../../drwgrph" as inh;

size(5cm);

real f(real x) {
	return -x^2+4;
}

real g(real x) {
	return x-2;
}



mkgrid((-5, 5), (-13, 5));

xaks(-5, 5, l="$x$");
yaks(-13, 5, l="$y$");

draw(graph(f, -4, 4), blue);
draw(graph(g, -4, 4), green);

label("$x-y=2$", (4, 2), E);
label("$-x^2+4=y$", (4, -12), E);

dott((0, -2));
dott((2, 0));

dott((0, 4));
dott((1, 3));
dott((-1, 3));
dott((4, -12));
dott((-4, -12));

