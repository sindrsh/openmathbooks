import figs;
unitsize(4cm);

void mkbroktick(int tc,real b, int j=0, int i=0, real y=0, real xs=0, pen p=black, bool colend = true){
	real dx = 1/tc;
	draw((xs,y)--(xs+b,y));
	for (i; i*dx<= b; ++i){
			real x = i*dx;
			//write((i+1)*dx==1.2);
			//write((i+1)*dx,1.2);
			if (x  != 0){
				string tcn = (string) tc;
				string name = "$\frac{%d}{x}$";
				string l = format(name, i);
				string l = replace(l, "x", tcn);
				if (i==j && colend){mktc(xs+x, l, y=y,p=blue);}
				else mktc(xs+x, l, y=y,p=p);
				}
			else mktc(xs+x, format(x), y=y);
}
}

// make bars with fractions
void brbr(int m, int n, real y=0.1, bool l=true, real xs=0,pen p=blue, bool arw=false){
	path s = (0,y)--(m/n,y);
	string lb = "";
	if (l == true){
			string name = "$\frac{%d}{x}$";
			lb = format(name, m);
			lb = replace(lb, "x", (string) n);
		 	}
	if (arw){
		draw(shift(xs,0)*s, p, arrow=Arrow(DefaultHead), L=Label(lb, position=Relative(0.5),N));
	}
	else{
		draw(shift(xs,0)*s, p, L=Label(lb, position=Relative(0.5),N));
		mktc(xs+m/n, p, y=y);
		}
	mktc(xs+0, p, y=y);
}
