import "../../inh" as inh;
import "../../drwgrph" as inh;

size(6cm);

real f(real x) { 
	return exp(x); 
}


real b = 2;
real a = -5;

yaks(0,8,bex=1.05,tck=true,l="$e^x$");
xaks(a,b,bex=1.3,aex=1.1,tck=true,l="$x$");


draw(graph(f,a,b),blue);



