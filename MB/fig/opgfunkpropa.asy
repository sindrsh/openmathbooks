import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(5cm, 4cm, keepAspect=false);

mkgrid((0, 10), (0, 20), dx=1, dy=5);

xaks(0, 10, "$x$", tck=true, tc=1);
yaks(0, 20, "$y$", tck=true, tc=5);

draw((0,0)--(10, 20), blue);
