import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 5;
defaultpen(fontsize(11 pt));
unitsize(0.75cm);
settings.render = 10;

int x = 4;
int y = 3;
int z = 2;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitbox,blue+opacity(.1),nolight);

label("4", (x/2,y+0.4,0));
label("3", (x+0.4,y/2,0));
label("2", (0,y+0.3,z/2));

/*
for (int i = 0; i <= x; ++i){
	for (int j = 0; j <= y; ++j){
			path3 sx = (0,0,0)--(0,y,0);
			path3 sy = (0,0,0)--(x,0,0);
			draw(shift(i,0,0)*sx, blue);
			draw(shift(0,j,0)*sy, blue);
		} 
    } 
*/
label("$G$",(1/1.5*x,1/2*y,0));
path3 b = (0,0,0)--x*X--x*X+y*Y--y*Y--cycle;   
draw(surface(b),blue+opacity(0.1));
