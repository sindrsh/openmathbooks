import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(4cm,4cm,keepAspect=false);

real f(real x){
	return (60-5x^2);	
}

real a = 0;
real b = sqrt(12);

draw(graph(f,a,b),blue);
xaks(0,b,bex=1.1, l="$x$");
yaks(0,60,bex=1.1,l="$f$");



pair A = (1, f(1));
pair B = (3, f(3));
draw(A--B,red);
dott(A);
dott(B);

draw((0,A.y)--A--(A.x,0),dotted);
draw((0,B.y)--B--(B.x,0),dotted);

mktc(A.x, "$a$");
mktc(B.x, "$b$");
mktcy(A.y,"$f(a)$");
mktcy(B.y, "$f(b)$");

draw(graph(f,a,b),blue);

