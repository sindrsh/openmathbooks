import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm);

real f(real x){
	return 2*x-3;
}

mkgrid((-2, 6), (-2, 6));
xaks(-2, 6, l="$x$");
yaks(-2.7, 6, l="$y$");

mktc(-2, "$-2$");
mktc(2, "$2$");
mktc(4, "$4$");
mktc(6, "$6$");

mktcy(-2, "$-2$");
mktcy(2, "$2$");
mktcy(4, "$4$");
mktcy(6, "$6$");

draw(graph(f, 0.2, 4.5), green);

