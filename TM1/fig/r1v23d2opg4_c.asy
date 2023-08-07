import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(5.5cm, 4cm, keepAspect=false);

mkgrid((-6,6), (-2,4));

xaks(-6, 6, tck=true, tc=2, l="$x$");
yaks(-2, 3, tck=true, l="$h$");

real f(real x){
  return 4/3-1/3*x;
}

real g(real x){
  return -0.08349x^2+0.66698x+0.6679;
}
path p1 = graph(f, -5, -2);
path p2 = graph(g, -2, 4);

draw(p1, blue, arrow=EndArrow(TeXHead));
draw(p2, blue);
mk_endbar(f,-5);
mk_endbar(g,-2);
mk_endbar(g, 4,leftbar=false);
