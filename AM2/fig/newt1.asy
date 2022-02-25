import "../../inh" as inh;
import "../../drwgrph" as inh;

size(6cm, 5cm,keepAspect=false);

real f(real x) { return (x-2)*(x+1)*(x+5); }
real df(real x) { return  3x^2+8x-7; }
real g(real x, real t) { 
	real m = 3x^2+8x-7 ;
	return m*(t-x)+f(x);;  
	}

real a = -0.5;
real b = 3;


real x1(real x0){
	return x0-f(x0)/df(x0);
}

yaks(-20,30,l="$f$");
xaks(a,b, l="$x$");

draw(graph(f,a,b),blue);
mktc(2,"$x_a$", pos=BeginPoint);


