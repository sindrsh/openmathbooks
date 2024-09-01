import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(0.75cm);

real a = 4;
real r = 2.5;
pair B = (a, 0);
pair C = (a, a);
pair D = (0, a);
pair rs = (a/2, a-r);

filldraw(shift(rs)*scale(r)*unitcircle, arpeng);
//filldraw(O--B--C--D--cycle, white);
filldraw(O--B--C--D--cycle, arpen);
