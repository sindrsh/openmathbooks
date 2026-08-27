import "../../inh" as inh;
import "../../drwgrph" as inh;

size(6cm);

real f(real x) { return 1/(x-3)+2; }

real a = -10;
real b = 13;
real d = 0.1;
real c = 3;

yaks(f(c-d),f(c+d),l="$f$");
xaks(a,b,l="$x$");



draw(graph(f,a,c-d),blue);
draw(graph(f,c+d,b),blue);



