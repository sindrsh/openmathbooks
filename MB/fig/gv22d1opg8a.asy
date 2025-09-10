import "../../inhopg" as inhopg;
import "../../drwgrph" as drgrph;

size(3cm, 3cm, keepAspect=false);

real f(real x){
	return 2x+3;
}

real a = -5;
real b = 5;

xaks(a, b, l="$x$");
yaks(f(a), f(b), l="$y$");
draw(graph(f, a, b), blue);


