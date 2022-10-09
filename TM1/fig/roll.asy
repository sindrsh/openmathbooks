import "../../inh" as inh;
import "../../drwgrph" as drw;

size(6cm);

real f(real x){
	return (x-0.5)*(x-2)*(x-3)+0.5;
}

xaks(0,2.2);
yaks(0,1.5);

pair A = ((-sqrt(19) + 11)/6, f((-sqrt(19) + 11)/6));

draw(A-(0.75,0) -- A+(0.75,0), red);
draw(graph(f, 0.5, 2), blue);

dott(A);
dott((0.5,f(2)));
dott((2,f(2)));

mktc(0.5,"$a$");
mktc(2, "$b$");
mktc(A.x, "$c$");
