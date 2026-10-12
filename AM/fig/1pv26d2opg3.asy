import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(7cm, 5cm, keepAspect=false);

real xmax = 25, ymax = 9000;

xaks(0, xmax, l="$x$", tck=true, tc=5);
yaks(0, ymax, l="$y$", tck=true, tc=1000);

real p(real x) {
  return 7000*exp(-0.29323*x);
}

real q(real x) {
  return 7000*exp(-0.29323*x)+2000;
}

draw((0,2000)--(xmax, 2000), dashed);

draw(graph(p, 0, xmax), blue);
draw(graph(q, 0, xmax), green);

dott((0, 7000), "$(0, 7000)$", E);
dott((9, 500), "$(9, 500)$",NE);
dott((0, 9000), "$(0, 9000)$", E);
dott((9, 2500), "$(9, 2500)$", NE);

label((5, 1500), "$p$", S);
label((5, 4000), "$q$", E);

