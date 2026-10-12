import "../../inhopg.asy" as inhopg;
import "../../drwgrph" as drwgrph;

size(4cm);

mkgrid((0, 8), (0, 8));
xaks(0, 8, bex=1.05, l="tid");
yaks(0, 8, bex=1.05, l="vannhøyde");

draw((0,0)--(2, 6)--(6, 8), green);
draw((0,0)--(8,8), green);
