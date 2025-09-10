import "../../inhopg" as inhopg;
import "../../drwgrph" as drgrph;

size(3cm, 3cm, keepAspect=false);

real f(real x){
	return 40/x;
}

real a = -0.2;
real b = 0.2;

xaks(a, b, l="$x$");
yaks(f(-0.01), f(0.01), l="$y$");
draw(graph(f, a, -0.01), blue);
draw(graph(f, b, 0.01), blue);

