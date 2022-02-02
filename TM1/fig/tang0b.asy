import "../../inh" as inh;
import "../../drwgrph" as inh;

size(5cm, 4cm,keepAspect=false);

real f(real x) { return x^3-x^2+x; }
real g(real x, real t) { 
	real m = 3x^2-2x+1;
	return m*(t-x)+f(x);;  
	}

real a = -1;
real b = 2;

yaks(f(a),f(b));
xaks(a,b);

draw(graph(f,a,b),blue);

real c = 1;
mktcy(c,"$f(a)$");
mktc(c,"$a$");

pair A = (c,f(c));
draw((0,A.y)--A--(A.x,0),dotted);

pair B = (a+0.25,g(c,a+0.25));
pair C = (b,g(c,b));

draw(B--C,deepgreen);

dott(A);



