import "../../inh" as inh;
import solids;
currentprojection=orthographic(5,4,4);

unitsize(1cm);

real x = 1;
real y = 1;
real z = 1;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitcube,blue+opacity(.1),blue,nolight);

pen p = black;
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
draw((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle, p);


