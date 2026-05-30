import "../../inhopg" as inh;

size(10cm);

path s = unitsquare;
path t = (0,0)--(1,0)--(1/2,sqrt(3)/2)--(0,0);
path tl = rotate(90)*t;
path tb = shift(1,0)*rotate(90)*tl;
path tr = shift(1,1)*rotate(-90)*t;
path tt = shift(0,1)*t;


real dx = 3;
transform sh = shift((dx,0));
real start = 0;

for(int i=0; i<3; ++i) {
	real x = (i+1)*i/2;
	for(int j=0; j<i+1; ++j) { 
		draw(shift(dx*i+x+j)*(s^^tt^^tb));
	}
	label((string) (i+1), (dx*i+x+0.5+i/2,-1.4));

	draw(shift(dx*i+x+i)*tr);
	draw(shift(dx*i+x)*tl);
	write(dx*i);
}

