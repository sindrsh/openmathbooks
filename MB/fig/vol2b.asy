import "../../inh" as inh;
import solids;
currentprojection=orthographic(5,4,4);
unitsize(0.75cm);

int x = 4;
int y = 3;
int z = 2;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitbox,black,nolight);

label("4", (x/2,y+0.4,0));
label("3", (x+0.4,y/2,0));
label("2", (0,y+0.3,z/2));

/*
for (int i = 0; i <= x; ++i){
	for (int j = 0; j <= y; ++j){
			path3 sx = (0,0,0)--(0,y,0);
			path3 sy = (0,0,0)--(x,0,0);
			draw(shift(i,0,0)*sx, black);
			draw(shift(0,j,0)*sy, black);
		} 
    } 
*/
label("$G$",(1/1.5*x,1/2*y,0));
path3 b = (0,0,0)--x*X--x*X+y*Y--y*Y--cycle;   
draw(surface(b),blue+opacity(0.2));
