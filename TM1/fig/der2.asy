import "../../inh" as inh;
import "../../drwgrph" as inh;

size(6cm, 5cm,keepAspect=false);

real f(real x) { return x^3-x^2+x; }


real a = -0.5;
real b = 2;

yaks(f(a),f(b),l="$f$");
xaks(a,b,l="$x$");

draw(graph(f,a,b),blue);

real c = 1;
mktcy(f(c),"$f(a)$");
mktc(c,"$a$");



