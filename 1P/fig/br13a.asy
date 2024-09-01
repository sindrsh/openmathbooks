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

real y = -0.3;
mkbroktick(5,2/5,y=y);
mkbroktick(5,4/5,3,y=y,p=blue);
mkbroktick(5,1,4,y=y);
draw((0,y)--(1,y));

y = -0.6;
mkbroktick(10,5/10,y=y);
mkbroktick(10,7/10,6,y=y,p=blue);
mkbroktick(10,1,7,y=y);
draw((0,y)--(1,y));







