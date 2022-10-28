import "../../inh" as inh;
import "../../drwgrph" as grph;
import "../../geo" as geo;

size(8cm,4cm,keepAspect=false);
real d = 0.3;
real f(real x){
    return cos(2pi*x-pi/3)+d;
}

real a = -0.2;
real b = pi/6+0.98;

xaks(a,b,l="$x$");
yaks(-1+d,1+d,l="$f$");

draw(graph(f,a,b),blue);
pair A = (1/6, f(1/6));
pair B = A+(1,0);

mktc(A.x,"$x_1$");
mktc(B.x,"$x_2$");
draw((A.x,0)--A,dotted);
A = B;
draw((A.x,0)--A,dotted);

