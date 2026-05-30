import "../../inh.asy" as inh;
import solids;
currentprojection=orthographic(5,4,4);
unitsize(0.4cm);

real x = 4.5;
real y = 5;
real z = 6;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitbox,black,nolight);
label("h", (x,-0.3,z/2), white, align=0.5W);
label("$h$", (0,y+0.3,z/2), align=0.5E);
pen p = black;
path3 b = (0,0,0)--x*X--x*X+y*Y--y*Y--cycle;   
draw(surface(b),blue+opacity(0.2));
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
label("$G$", (1/2*x, 1/2*y, 0), align=W);





