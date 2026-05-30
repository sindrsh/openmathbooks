import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
size(3cm);
real f(real x){
	return x^3-x^2+2;
}
real a = -0.5;
real b = 1;
draw(graph(f, a, b));
