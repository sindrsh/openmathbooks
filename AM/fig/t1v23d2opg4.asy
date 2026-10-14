import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

unitsize(0.25cm);

xaks(-1, 7, l="$x$");
yaks(0, 6, l="$y$");

real f(real x) {
	return 1/9*(x+1)*(x-6)^2;
}

draw(graph(f, -1, 7));
mktc(0, "$0$");
mktc(2, "$2$");
mktc(4, "$4$");
mktc(6, "$6$");
