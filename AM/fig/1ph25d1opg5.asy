import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(8.25cm, 5cm, keepAspect=false);

mkgrid((0, 10), (0, 2000), dy=400);


xaks(0, 10, "$x$", bex=1.05,tck=true, tc=1);
yaks(0, 2000, l="$y$", tck=true, tc=400);

draw((0,0)--(10, 2000), green);
draw((0,0)--(10, 1800), blue);

label("$f$", (10, 1800), E);
label("$g$", (10, 2000), N);
