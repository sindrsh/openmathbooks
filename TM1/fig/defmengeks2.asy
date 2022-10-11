import "../../inh" as inh;
import "../../drwgrph" as inh;

size(7cm, 4.5cm, keepAspect=false);

real f(real x) { 
	return 1/x; 
}


real a1 = -1;
real b1 = -3;

real a2 = 2;
real b2 = 5;

mkgrid((-3,5),(-1,0.5), dy=1/10);
yaks(-1,0.5,aex=1.3, bex=1.5,tck=true,l="$f$");
xaks(-3,5,tck=true,bex=1.1,l="$x$");


mktcy(1/2,"$\frac{1}{2}$");

draw(graph(f,a1,b1),red);
draw(graph(f,a2,b2),red);



