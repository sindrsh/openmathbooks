import "../../inh" as inh;
import "../../drwgrph" as inh;

size(4cm, 3cm,keepAspect=false);

real f(real x) { return -x^2; }

real a = 0;
real b = 2;

yaks(f(a),f(b),l="$f$");
xaks(a,b,l="$x$");

draw(graph(f,a,b),blue);



