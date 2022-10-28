import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 10;
defaultpen(fontsize(11 pt));
unitsize(0.5cm);

real x = 4.5;
real y = 5;
real z = 6;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitcube,blue+opacity(.1),blue,nolight);
label("h", (x,-0.3,z/2), white, align=0.5W);
label("$h$", (0,y+0.3,z/2), align=0.5E);
pen p = blue;
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
draw((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle, p);
label("$G$", (1/2*x, 1/2*y, 0), align=W);



