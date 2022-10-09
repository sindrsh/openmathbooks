import "../../inh" as inh;
import "../../drwgrph" as drw;

size(6cm);

real f(real x){
	return 1/10*(x-1)*(x-2)*(x-3)+0.65;
}


real a = 0.5;
real b = 2;

xaks(0,2.2, l="$x$");
yaks(0,0.75, l="$f$");

pair C = (2-sqrt(3)/2, f(2-sqrt(3)/2));
pair A = (a,f(a));
pair B = (b, f(b));

draw(graph(f, 0, 2.5), blue);
draw(A -- B, red);
draw(C+1/2*(A-B)--C-1/2*(A-B), deepgreen);

dott(A);
dott(B);
dott(C);

mktc(0.5,"$a$");
mktc(2, "$b$");
mktc(C.x, "$c$");

