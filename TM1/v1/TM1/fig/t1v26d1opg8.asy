import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm);

real f(real x) {
	return 1/2*(x-4)*(x+6);
}

real dx = 2;
real a = -6-dx;
real b = 4+dx;

draw(graph(f, a, b), blue);

pair A = (4, 0);
pair C = A+(1, 5);
pair D = A-(1, 5);
pair C1 = A+2*(1, 5);
pair D1 = A-2*(1, 5);

draw(C1--D1, red);
draw(A--(C.x, A.y), L="$1$");
draw((C.x, A.y)--C, L="$5$", E);

dott(A, "$(4, 0)$", NW);
dott((-1, -12.5), "$(-1, -12,5)$", S);

