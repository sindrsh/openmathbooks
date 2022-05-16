import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm,4cm,keepAspect=false);

real f(real x){
	return (50-5x^2);	
}


real a = 0;
real b = sqrt(10);

xaks(0,b,bex=1.1, tck=true,tc=1,l="$t$");
yaks(0,50,bex=1.15, tck=true, tc=10,l="$h$");

draw(graph(f,a,b),blue);

