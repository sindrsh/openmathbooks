import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm);

real f(real x) {
	return -0.00248*x^2+26;
}

real g(real x){
	return -f(x);
}

real a = 37.5;

draw(graph(f, -a, a)--graph(g,a,-a)--cycle);

draw((0, f(0))--(0, g(0)), dashed, L="52,0\,cm");

draw((a, f(a))--(a, g(a)), L="45,0\,cm", E);

label(rotate(90)*Label("bunn"), (-a, 0), W);

real y = g(0)-4;
draw((-a, y)--(a, y), L="75\,cm");
mktc(-a, y=y);
mktc(a, y=y);




