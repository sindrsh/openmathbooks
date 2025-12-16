import "../../inhopg" as inh;
import "../../drwgrph" as geo;

size(4cm, 4cm, keepAspect=false);

mkgrid((-3,1), (-8,1));

xaks(-3, 1, tck=true, l="$x$");
yaks(-8, 1, tck=true, l="$h$", bex=1.5);

real f(real x){
  return (x-1)*(x+1)*(x+2);
}

path p1 = graph(f, -3, 1);

draw(p1, red, arrow=EndArrow(TeXHead));
mk_endbar(f, -3, p=red);
