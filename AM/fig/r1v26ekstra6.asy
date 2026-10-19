import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 5cm, keepAspect=false);

xaks(0, 8, "$t$");
yaks(0, 1, "$V'$");

real C = 0.8;
real k = 0.7;

real f(real t) {
	return 1/(1+exp(-t));
}

real g(real t ) {
	return C/(1+exp(-k*t));
}

draw(graph(f, -2, 8), red, L="$F$");
draw(graph(g, -2, 8), green, L="$L$");

