import solids;
currentprojection=orthographic(5,4,4);
defaultpen(fontsize(11 pt));
unitsize(1cm);
settings.render = 10;
settings.outformat="pdf";

int x = 5;
int y = 3;
int z = 2;

draw(xscale3(x)*yscale3(y)*zscale3(z)*unitcube,blue+opacity(.1),nolight);

//label("4", (x/2,y+0.4,0));
//label("3", (x+0.4,y/2,0));
//label("2", (0,y+0.3,z/2));

for (int i = 0; i <= x; ++i){
	for (int j = 0; j <= y; ++j){
		for (int k = 0; k <= z; ++k){
			path3 sx = (0,0,0)--(0,y,0);
			path3 sy = (0,0,0)--(x,0,0);
			path3 sz = (0,0,0)--(0,0,-z);
			draw(shift(x,0,k)*sx, blue);
			draw(shift(i,0,z)*sx, blue);
			draw(shift(0,y,z-1)*sy, blue);
			draw(shift(0,j,z)*sy, blue);
			draw(shift(i,y,z)*sz, blue);
			draw(shift(x,j,z)*sz, blue);
			}
		} 
    } 
draw((x,y,0)--(0,y,0), blue);



