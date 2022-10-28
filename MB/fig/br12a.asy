import inh;
import figs;

unitsize(4cm);

void mkbroktick(int tc,real b, int i=0, real y=0, pen p=black){
	real dx = 1/tc;
	for (i; i*dx<= b; ++i){
			real x = i*dx; 
			if (x  != 0){
				string tcn = (string) tc;
				string name = "$\frac{%d}{x}$";
				string l = format(name, i);
				string l = replace(l, "x", tcn); 
				mktc(x, l, y=y,p=p);
				}
			else mktc(x, format(x), y=y);	
}
}

int b = 1;
xaks(0,b, tck=false, bex=0.25);
mktc(0,"0");
mktc(1,"1");
mktc(0.5,"0,5",blue);

real y = -0.3;
mkbroktick(2,1/2,y=y,p=blue);
mkbroktick(2,1,2,y=y);
draw((0,y)--(1,y));

y = -0.6;
mkbroktick(4,1/4,y=y);
mkbroktick(4,1/2,2,y=y,p=blue);
mkbroktick(4,1,3,y=y);
draw((0,y)--(1,y));

y=-0.9;
mkbroktick(8,3/8,y=y);
mkbroktick(8,1/2,4,y=y,p=blue);
mkbroktick(8,1,5,y=y);
draw((0,y)--(1,y));





