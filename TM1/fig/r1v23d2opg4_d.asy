import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(5.5cm, 4cm, keepAspect=false);

mkgrid((-6,6), (-2,4));

xaks(-6, 6, tck=true, tc=2, l="$x$");
yaks(-2, 4, tck=true, l="$k$");

real f(real x){
  return -0.01429x^3+0.05476x^2-0.27143x+0.12381;
}

path p = graph(f, -4, 4);

draw(p, blue, arrow=EndArrow(TeXHead));
mk_endbar(f,-4);

pair A = (-4, f(-4));
pair B = (-3, f(-3));
