import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(0.25cm);


path p = shift(-(0.5,0.5))*unitsquare;
filldraw(shift(0,0)*p, arpen);
filldraw(shift(1,0)*p, arpen);
filldraw(shift(0,1)*p, arpen);
filldraw(shift(1,1)*p, arpen);
filldraw(shift(-1,2)*p, arpen);
filldraw(shift(2,2)*p, arpen);
filldraw(shift(2,-1)*p, arpen);
filldraw(shift(-1,-1)*p, arpen);
filldraw(shift(-2,3)*p, arpen);
filldraw(shift(3,3)*p, arpen);
filldraw(shift(3,-2)*p, arpen);
filldraw(shift(-2,-2)*p, arpen);
