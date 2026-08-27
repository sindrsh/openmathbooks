import "../../inh" as inh;
import "../../drwgrph" as inh;

size(8cm, 6cm, keepAspect=false);

real f(real x) { 
	return exp(x); 
}


real a = 2;
real k = 0.75;

xaks(0,3, "$x$");
yaks(0,f(3), "$y$");

pair A = (a, f(a));
pair Al = A-(1,exp(a));
pair Ar = A+1.3*(1,exp(a));

draw(Al--Ar,red);
draw(graph(f, 0, 3),blue);

draw((0,f(a))--A--(a,0)^^(0, f(a)*(1+k))--(a+k, f(a)*(1+k))--(a+k, 0),dotted);


mktc(a, "$a$");
mktc(a+k, "$a+k$");
mktcy(f(a), "$f(a)$");
mktcy(f(a)*(1+k), "$f(a)+f'(a)k$");

