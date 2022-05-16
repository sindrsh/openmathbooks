import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm,5cm,keepAspect=false);

real f(real x){
	return (50-5x^2);	
}


real a = 0;
real b = sqrt(10);

xaks(0,b,bex=1.1, tck=true,tc=1,l="$t$");
yaks(0,50,bex=1.15, tck=true, tc=10,l="$h$");

pair A = (0, f(0));
pair B = (1, f(1));
draw(A--B,red);
draw((A.x,A.y)--(B.x,A.y),L="$1$",align=N,Cyan);
draw((B.x,A.y)--B,L="$5$",align=E,Cyan);
dott(A);
dott(B);

pair A = (1, f(1));
pair B = (3, f(3));
draw(A--B,red);
draw((A.x,A.y)--(B.x,A.y),L="$2$",align=N,Cyan);
draw((B.x,A.y)--B,L="$40$",align=E,Cyan);
dott(A);
dott(B);

draw(graph(f,a,b),blue);

