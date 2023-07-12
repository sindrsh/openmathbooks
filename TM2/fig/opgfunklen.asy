import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm, 3cm, keepAspect=false);

real f(real x){
  return 1/x;
}

real b = 0.2;
real a = 0.2*b;

xaks(0, 1.1*b, l="$x$");
yaks(0, f(a), l="$f$");
draw(graph(f, a, b), blue, L=Label("$l$", position=Relative(0.8)));
mktc(a, "$a$");
mktc(b, "$b$");
