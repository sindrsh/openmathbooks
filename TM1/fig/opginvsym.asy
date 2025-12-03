import "../../inh" as inh;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;
size(4cm);

real a = 2;

real f(real x) {
	return x^2;
}


real b = -1.5;

pair C = (0, 0);
pair A = (b, f(b));
pair B = (0, f(a));
pair D = (0, f(b));

mksq2(D, C);

draw(A--D, L="$h$", N);
draw(graph(f, -a, a), blue);
draw((0, 0)--(0, f(a)), dotted);
draw(C--D, L="$g$", W);
label("$f$", (a, f(a)), E);

//mktc(0, "$x=-\frac{b}{2a}$");







