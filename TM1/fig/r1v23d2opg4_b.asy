import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(5.5cm);

mkgrid((-6,6), (-1,7));

xaks(-6, 6, tck=true, tc=2, l="$x$");
yaks(-1, 6, tck=true, l="$g$");

real f(real x){
  return -0.01042x^3+0.79167x+3.5;
}

path p = graph(f, -4, 4);

draw(p, blue);
mk_endbar(f,-4);
mk_endbar(f, 4,leftbar=false);
