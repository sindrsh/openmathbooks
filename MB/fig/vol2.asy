import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 10;
defaultpen(fontsize(11 pt));
unitsize(0.75cm);

real x = 4;
real y = 3;
real z = 2;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitcube,blue+opacity(.1),blue,nolight);

label("4", (x/2,y+0.4,0));
label("3", (x+0.4,y/2,0));
label("2", (0,y+0.3,z/2));

pen p = blue;
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
draw((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle, p);



