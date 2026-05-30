import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(10cm);

real f(real x){
	return cos(x);
}

real g(real x) {
	return cos(x-pi/3);
}

real x0 = 1.2;
real x1 = x0+pi/3;

real x2 = pi+pi/6;
real x3 = x2+pi/3;

xaks(0, 2pi+pi/3, "$x$");
yaks(-1, 1.2, "$y$");

pair A = (x0, f(x0));
pair B = (x1, g(x1));
pair C = (x2, f(x2));
pair D = (x3, g(x3));

draw(A--B);

draw(graph(g, pi/3, 2pi+pi/3), blue);
draw(graph(f, 0, 2pi), green);

//label("$f$", (2pi, 1), NE);
label("$f$", (2pi+pi/3, 1), NE);

label("$\phi$", 1/2*(A+B), 0.75N+0.5W);

