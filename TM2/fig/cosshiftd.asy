import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(6.5cm);

real f(real x){
	return cos(x);
}

real g(real x) {
	return 0.5*cos(x-pi/3)+2;
}

real x0 = 1.2;
real x1 = x0+pi/3;

xaks(-pi, pi, "$x$");
yaks(-1, 2.5, "$y$");

pair A = (x0, f(x0));
pair B = (x1, g(x1));

mktc(x0, "$q_1$");
mktc(x1, "$q_2$");

draw(graph(g, -pi, pi), blue);
draw(graph(f, -pi, pi), green);

draw((x0, 0)--A, dotted);
draw((x1, 0)--B, dotted);

label("$f_2$", (pi, g(pi)), NE);
label("$f_1$", (pi, f(pi)), NE);

dott(A);
dott(B);




