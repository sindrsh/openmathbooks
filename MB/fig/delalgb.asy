import inh;
import figs;

unitsize(0.2 cm);

real d = 0.5;
real a = 5+2*d;
real h = 12;
real dx = 1+d;
path b = box((-1,-1),(a-1,h-1));



void grp(int n, int m=0, real x=0, real y=0) {	
	for(int i; i<n; ++i){
		db(I=1,J=10,p=deepgreen, sh=(x+i*dx,y));
	}
	db(I=1, J=m, sh=(x+n*dx,y));
	draw(shift((x,y))*b);
}

grp(2,3,0,0);
grp(2,3,a,0);
grp(2,3,0,h);
grp(2,3,a,h);



