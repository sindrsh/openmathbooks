import "../../inh" as inh;
import "../../drwgrph" as inh;

size(7cm);

real f(real x) { 
	return 1/x; 
}


real a1 = -1;
real b1 = -3;

real a2 = 2;
real b2 = 5;

mkgrid((-3,5),(-1,1));
yaks(-1,1,aex=1.3, bex=1.5,tck=true,l="$f$");
xaks(-3,5,bex=1.1,tck=true,l="$x$");



draw(graph(f,a1,b1),red);
draw(graph(f,a2,b2),red);



