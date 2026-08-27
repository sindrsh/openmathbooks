import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(5.5cm);

mkgrid((-6,6), (-1,7));

xaks(-6, 6, tck=true, tc=2, l="$x$");
yaks(-1, 6, tck=true, bex=1.18, l="$f$");

real f(real x){
  return abs(1/x);
}

real b = 1/7;

path p1 = graph(f, -4, -b);
path p2 = graph(f, b, 4);

draw(p1, blue);
draw(p2, blue);

mk_endbar(f, -4);
mk_endbar(f, 4, leftbar=false);
