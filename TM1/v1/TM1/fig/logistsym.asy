import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm, 3cm, keepAspect=false);

real a = 1;
real b = 2;
real c = 3;
real d = log(c)/b;

real f(real x) {
	return a/(1+c*exp(-b*x));
}

real dx = 3;
real x0 = d-dx;
real x1 = d+dx;

xaks(x0, x1);
yaks(0, f(b));



draw(graph(f, x0, x1), blue);
draw((x0, f(d))--(x1,f(d)), green);



