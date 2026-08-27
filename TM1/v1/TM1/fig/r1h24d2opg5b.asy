import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(4cm, 4cm, keepAspect=false);

mkgrid((-2,2), (-3,2));

xaks(-2, 2, tck=true, l="$x$");
yaks(-3, 2, tck=true, l="$g$");

real f(real x){
  return x-1;
}

real g(real x){
  return -2x+4;
}
path p1 = graph(f, -2, 1);
path p2 = graph(g, 1, 2);

draw(p1, red, arrow=Arrows(TeXHead));
draw(p2, red, arrow=EndArrow(TeXHead));
mk_endbar(g, 1, p=red);
