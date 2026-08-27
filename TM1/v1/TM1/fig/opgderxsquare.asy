import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(4cm);


real f(real x){
	return x^2;
}

real c = 0.5;

pair A = (c, f(c));
pair B = (c/2, 0);
pair A1 = A+1.5*(A-B);
pair B1 = B-0.4*(A-B);

draw(graph(f, -1, 1), blue);
draw(A1--B1, green);

label("$f$", (1, f(1)), NE);

xaks(-1, 1);
yaks(-0.2, f(1));

dott(A, "$A$", NW);
dott(B, "$B$", SE);



