import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 10;
defaultpen(fontsize(11 pt));
unitsize(0.75cm);

draw(unitcube,blue+opacity(.1),blue,nolight);

label("1", (0.7,1.5,0));
label("1", (1.4,0.6,0));
label("1", (0,1.3,0.5));
real x = 1;
real y = 1;
real z = 1;

pen p = blue;
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
draw((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle, p);
