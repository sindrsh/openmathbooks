import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm,6cm,keepAspect=false);

real f(real x){
	return (60-5x^2);	
}


real a = 0;
real b = sqrt(12);

draw(graph(f,a,b),blue);
xaks(0,b,bex=1.1, tck=true,tc=1,l="$t$");
yaks(0,60,bex=1.1, tck=true, tc=10,l="$h$");

for(int i=1; 5*i<60; ++i){
	mktcy(5*i,"");
}



