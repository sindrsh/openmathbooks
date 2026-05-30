import "../../inhopg" as inhopg;
import "../../drwgrph" as drgrph;

size(3cm, 3cm, keepAspect=false);

real f(real x){
	return 1.2^x;
}

real a = -5;
real b = 5;

xaks(a, b, l="$x$");
yaks(-0.2, f(b), l="$y$");
draw(graph(f, a, b), blue);


