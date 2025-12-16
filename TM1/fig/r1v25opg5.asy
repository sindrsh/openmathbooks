import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(9cm);

real f(real x){
	return log(x);
}

real e = 2.718281828;
real a = e;
real b = 1/2*e+1/2;

xaks(0, 10, l="$x$");
yaks(f(0.2), 3.2, l="$y$");

pair A = (0, 0);
pair B = (a, f(a));
pair AB = B-A;
pair Am = A-0.2*AB;
pair Bm = B+2*AB;
pair C = (b, b);
pair C1 = (Am.x, Am.x);
pair C2 = (3, 3);

mksq2(C, B);
draw(Am--Bm);
draw(A--C--B);
draw(C1--C2, green);

draw(graph(f, 0.2, 10), blue, L=Label("$f$", position=Relative(1)));
dott(A, "$A$", NW);
dott(B, "$B$", S);
dott(C, "$C$", NW);




