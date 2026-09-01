import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(4cm, 5cm, keepAspect=false);

real f(real x){
	return -2*(x-4)*(x+3);
}

pair A = (-3, f(-3));
pair B = (4, f(4));
pair C = (0, f(0));

xaks(-4, 5, l="$x$");
yaks(-2, 25, l="$y$");

draw(graph(f,-3.1, 4.1), blue);
dott(A, "$(-3, 0)$", NW);
dott(B, "$(4, 0)$", NE);
dott(C, "$(0, 24)$", NW);

