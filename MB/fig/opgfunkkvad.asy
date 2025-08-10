import "../../inhopg" as inh;
import drwgrph;
size(4cm, 3cm, keepAspect=false);

real f(real x){
	return x^2-2*x-8;
}
int a = 0;
int b = 10;
xaks(-4,6, aex=1.075,l="$x$");
yaks(-10, f(6), l="$f$", bex=1.075);

draw(graph(f,-4,6), blue);
mktc(-2, "$x_1$");
mktc(4, "$x_2$");
dott((1, -9), "$(1, -9)$", S);
