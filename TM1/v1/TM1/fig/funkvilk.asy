import "../../inh" as inh;
import "../../drwgrph" as inh;

size(5cm);

real f(real x) { 
	if (x<1) { return -2x+1; }
	return x^2-2x; 
}


real a = -1;
real b = 3;

yaks(-1,3,aex=1.1,tck=true,l="$f$");
xaks(-1,b,tck=true,l="$x$");

draw(graph(f,a,b),blue);



