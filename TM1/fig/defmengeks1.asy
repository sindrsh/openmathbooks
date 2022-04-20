import "../../inh" as inh;
import "../../drwgrph" as inh;

size(5cm);

real f(real x) { 
	return 2x-1; 
}


real a = 1;
real b = 3;

mkgrid((0,4),(0,5));
yaks(0,f(b),aex=1.1,tck=true,l="$f$");
xaks(0,4,tck=true,l="$x$");



draw(graph(f,a,b),blue);



