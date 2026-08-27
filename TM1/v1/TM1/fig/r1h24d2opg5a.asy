import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(4cm, 4cm, keepAspect=false);

mkgrid((0,2), (0,7));

xaks(0, 2, tck=true, l="$x$");
yaks(0, 7, tck=true, l="$f$");

real f(real x){
  return x^2+3;
}

real g(real x){
  return -0.08349x^2+0.66698x+0.6679;
}
path p1 = graph(f, 0, 2);

draw(p1, red, arrow=EndArrow(TeXHead));
mk_endbar(f, 0, p=red);
