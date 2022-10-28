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

draw(shift(1,1,0)*scale(3,1,1)*unitcube,blue+opacity(0.1));

x = 3;
y = 1;
z = 1;

transform3 sh = shift(1,1,0);
pen p = blue;
draw(sh*((x,0,0)--(x,y,0)--(0,y,0)), p);
draw(sh*((x,0,0)--(x,0,z)), p);
draw(sh*((0,y,0)--(0,y,z)), p);
draw(sh*((x,y,0)--(x,y,z)), p);
draw(sh*((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle), p);
draw(sh*((x,0,0)--O--(0,0,z)),p);
draw(sh*((0,y,0)--O),p);




