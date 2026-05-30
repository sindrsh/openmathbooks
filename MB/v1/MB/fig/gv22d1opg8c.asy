import "../../inhopg" as inhopg;
import "../../drwgrph" as drgrph;

size(3cm, 3cm, keepAspect=false);

real f(real x){
	return x^2+7x+12;
}

real a = -8;
real b = 1;

xaks(a, b, l="$x$");
yaks(-1, f(b), l="$y$");
draw(graph(f, a, b), blue);


