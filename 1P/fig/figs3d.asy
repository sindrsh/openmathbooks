import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);

settings.render = 10;

void bx(int x, int y, int z){
	int x = 4;
	int y = 3;
	int z = 2;	draw(xscale3(x)*yscale3(y)*zscale3(z)*unitcube,blue+opacity(.1),nolight);
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
}

triple nvec(triple x){
    return x/abs(x);
}

void mksq(triple x, triple y, triple s, real k = 0.2, real l = 0.2){
    triple xn = nvec(x);
    triple yn = nvec(y);
    draw(s -- -l*xn+s ^^ -l*xn+s -- -l*xn+s+k*yn ^^ 
        -l*xn+s+k*yn -- s+k*yn ^^ s+k*yn--s);
}


