settings.outformat="pdf";
defaultpen(fontsize(16 pt));
defaultpen(2pt);
unitsize(4cm);

void drw_bar(real x, real y=0, pen p=black){
	draw((x,y-0.03)--(x,y+0.03), p);
}

void mkones(int n){
	for(int i=1; i<=n; ++i){
		label((string) i, (i,0.14));
} 	
}

void mkl(real n, real k=1){
	real y = -0.17;
	draw((0,0)--(k,0), black+1bp);
	drw_bar(0);
	label("0", (0,y));
	real tc = 1/n;
	for (int i=1; i*tc<= k; ++i){
			real x = i*tc; 
			drw_bar(x);
			string k2l = (string) n;
    		string name = "$\frac{%d}{x}$";
   			string l = format(name, i);
    		string l = replace(l, "x", k2l); 
    		label(l, (i*tc,y));
				}
}

void mktc(real x, string nm="", pen p=black, real y=0, pair pos=(0,-0.5)){
    draw((x,y), (0,0.1cm) -- (0,-0.1cm), p+0.75bp);
    Label(nm, pos);
    }   

void jmp(int a, int b, real y=0.3, bool l=true, real xs=0, real ys=0, pen p=blue, bool turn=false, string lb="",pen lc=p){
	real x = a/b;
	path pth = (0,y)--(x,y);
	if (turn){pth= (x,y)--(0,y);}
	if (l == true){
			string name = "$\frac{x}{y}$";
   			string l = replace(name, "x", (string) a);
    		lb = replace(l, "y", (string) b); 
		 	}
	drw_bar(xs,y,blue); 
	drw_bar(xs+x,y,blue); 	
	draw(shift(xs,ys)*pth, p, L=Label(lb,position=Relative(0.5),N)); 
	// if arrow wanted, add arrow=Arrow(DefaultHead, 12)
}

void jmps(int a, int b, int n){
	for(int i=0; i<n; ++i){
		jmp(a,b, xs=a/b*i);
	}
}

