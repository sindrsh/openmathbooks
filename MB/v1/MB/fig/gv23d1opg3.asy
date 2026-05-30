import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(0.5cm);


real x = 7;

filldraw(scale(x)*unitsquare, arpen);
filldraw(shift(x,0)*scale(2,x)*unitsquare, arpeng);
filldraw(shift(0,x)*scale(x,2)*unitsquare, arpeng);
filldraw(shift(x,x)*scale(2)*unitsquare, arpenr);

draw((0,0)--(x,0), L="$x$", N);
draw((2+x,0)--(x,0), L="$2$", N);
draw((x,0)--(x,x), L="$x$",W);
draw((x,x+2)--(x,x), L="$2$",W);
