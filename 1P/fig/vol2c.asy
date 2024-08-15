import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 5;
defaultpen(fontsize(11 pt));
unitsize(1cm);
settings.render = 10;

int x = 4;
int y = 3;


label("\phantom{3}", (x+0.4,y/2,0));

path3 b = (0,0,0)--x*X--x*X+y*Y--y*Y--cycle;   
draw(surface(b),blue+opacity(0.1));
label("$G$",(1/2*x,1/2*y,0));
