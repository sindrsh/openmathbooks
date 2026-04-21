import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(5.5cm, 4cm, keepAspect=false);

mkgrid((-7,5), (-2,5));

xaks(-7, 5, tck=true, tc=2, l="$x$");
yaks(-2, 5, tck=true, l="$h$");

real f(real x){
  return 4/3-1/3*x+2/3;
}

real g(real x){
  return -0.08349x^2+0.66698x+0.6679;
}
path p1 = graph(f, -6, -3);
path p2 = graph(g, -2, 4);

draw(p1, blue, arrow=EndArrow(TeXHead));
draw(p2, blue);
mk_endbar(f,-6);
mk_endbar(g,-2);
mk_endbar(g, 4,leftbar=false);
