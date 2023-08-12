import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;


size(10cm);

real f(real x){
  return (3x-6)/(x-1);
}

mkgrid((-8,10),(-4, 8));

xaks(-7, 9, l="$x$", tck=true);
yaks(-3, 7, l="$y$", tck=true, bex=1.2);

draw((-8,3)--(10,3), blue+dotted);
draw((1,-4)--(1,8), blue+dotted);
draw(graph(f, -7, 0.4), deepgreen);
draw(graph(f, 10/7, 9), deepgreen);
