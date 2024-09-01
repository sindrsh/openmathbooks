import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

filldraw(scale(2)*unitsquare, arpen);

filldraw(scale(2)*shift(1.5,0)*unitsquare, arpen);

path[] p = (0,0)--(5.5,0)^^(2.5,0)--(2.5,-2);
draw(shift(0,-0.5)*p, dotted);
