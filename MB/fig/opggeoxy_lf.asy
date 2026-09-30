import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(10cm);

real x = 23;
real y = 70;
real b = 7.5;

filldraw(scale(y,b)*unitsquare, arpen);
filldraw(shift(y,0)*scale(x,b)*unitsquare, arpeng);
filldraw(shift(0,b)*scale(x,b)*unitsquare, arpeng);
filldraw(shift(x,b)*scale(y-x,b)*unitsquare, arpenr);
label("$x$", (y+x/2, 0), N);
label("$x$", (x/2, b), N);
label("$47$", ((x+y)/2, b), N);
label("$93$", ((x+y)/2, -2), S);
label("$y$", (y/2, 0), S);

draw((0,-2)--(x+y, -2));
mktc(0, y=-2);
mktc(x+y, y=-2);
