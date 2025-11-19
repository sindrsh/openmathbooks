import figs;
import inh;
import solids;
import three;
triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);
unitsize(1.5cm);

real x = 3;
real y = 4.5;
real z = 1.5;

triple O = (0,0,0);

draw(O -- x*X, arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- y*Y, arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- z*Z, arrow=Arrow3(TeXHead2));

draw(shift(1,1,0)*scale(3,1,1)*unitcube,blue+opacity(0.2));

x = 3;
y = 1;
z = 1;

pen p = blue;
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
draw((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle, p);



