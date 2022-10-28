import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 5;
defaultpen(fontsize(11 pt));
unitsize(0.5cm);
settings.render = 10;

int x = 4;
int y = 3;
int z = 2;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitbox,blue+opacity(.1),nolight);
label("h\o gde", (0,y+0.3,z/2),align=E);
label("$G$",(1/1.5*x,1/2*y-0.1,0));
path3 b = (0,0,0)--x*X--x*X+y*Y--y*Y--cycle;   
draw(surface(b),blue+opacity(0.1));
