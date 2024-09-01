import figs;
import inh;

size(8cm);

xaks(0,8);
yaks(0,4);


filldraw(shift(1,1)*unitsquare, arpen);
filldraw(shift(3,3)*unitcircle, arpeno);

path p = (0,0)--(4,0)--(4,3)--cycle;

filldraw(shift(4,1)*p,arpeng);



