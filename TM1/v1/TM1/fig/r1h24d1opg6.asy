import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(7cm);

real f(real x){
	real af = -0.2;
	real bf = -4*af;
	return af*x^3+bf*x^2+4;
}

real g(real x) {
	return x*(x-6)*(-0.25);
}

real h(real x) {
	return 1/2*x+2;
}

mkgrid((-4, 8), (-4, 8), dx=2, dy=2);
xaks(-4, 8, "$x$");
yaks(-4, 8, "$y$");

for(int i=0; i<6; ++i) {
	real p = -2+2*i;
	if(p != 0){
		mktc(p, format(p));
		mktcy(p, format(p));
	}
}

draw(graph(f, -1.75, 5.3), red);
draw(graph(g, -1.75, 7.75), green);
draw(graph(h, -4, 8), blue);

