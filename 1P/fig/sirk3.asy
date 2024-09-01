import inh;
import figs;
unitsize(1cm);


real v = pi/6;
real u = 0;
path p = O--graph(f,0,v)--cycle;
filldraw(p,arpen);

real v = 5pi/3;
real u = 5pi/6;
path p = O--graph(f,u,v)--cycle;
filldraw(shift(3,0)*p,arpeng);

real v = pi/2;
real u = pi;
path p = O--graph(f,u,v)--cycle;
filldraw(shift(5.2,0)*p,arpenr);


