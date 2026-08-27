import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm, keepAspect=false);

real f(real x) {
	return x^3+7x^2+4x-12;
}

draw(graph(f, -6.2, 1.2), blue);

mktc(-6, "$-6$");
mktc(-2, "$-2$");
mktc(1, "$1$");

xaks(-6.2, 1.2, "$x$");
yaks(-13, 20, "$f$");

