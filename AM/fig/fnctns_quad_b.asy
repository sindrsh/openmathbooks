import fnctns;

real f(real x) {
	return -(x+2)*(x-4);
}

real ym = f(1);

xaks(-5, 5, l="$x$");
yaks(-7, ym, l="$f$");

draw(graph(f, -3, 5), blue);
draw((1, ym)--(1, -7), dashed+green);

dott((-2, 0));
dott((4, 0));
dott((1, f(1)));

