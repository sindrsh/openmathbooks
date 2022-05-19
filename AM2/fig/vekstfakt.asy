import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm,4cm,keepAspect=false);

real f(real x){
	return (x^2);	
}


real a = 0;
real b = 2.8;

draw(graph(f,a,b),blue);
xaks(0,b,bex=1.1, l="$x$");
yaks(0,f(b),bex=1.1, l="$f$");

pair A = (1, f(1));
pair B = (2.5, f(2.5));
draw(A--B,red);


draw((0,A.y)--A--(A.x,0),dotted);
draw((0,B.y)--B--(B.x,0),dotted);

dott(A);
dott(B);

mktcy(A.y,"$f(a)$");
mktcy(B.y, "$f(b)$");
mktc(B.x,"$b$");
mktc(A.x,"$a$");

