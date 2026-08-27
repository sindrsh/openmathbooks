import "../../inh" as inh;
import "../../drwgrph" as inh;

unitsize(4cm);

real f(real x) { return x^2-x+0.5; }

real a = 0;
real b = 1.2;

real k = 0.6;

yaks(0,f(b),l="$y$");
xaks(0,b,l="$x$");

label("$f(x)$",(b,f(b)),align=2NE);


