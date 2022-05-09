settings.outformat="pdf";
defaultpen(fontsize(12 pt));
defaultpen(1.5pt);
usepackage("icomma");
usepackage("amsmath");

void dc(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=cyan, pen p1=p, bool l=false, real ls=1.0, real opac=0.1){
	path b = scale(0.5)*unitcircle;
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(i-1,0.5+j-1))*b, p+opacity(opac), drawpen=p1); 
			++cnt;
			}
			} 
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt);
		 	label(lb,(I/2+sh.x,J+ls*11+sh.y));
		 }
}

void ten(int I=1, pair sh=(0,0), pen p=green, pen p1=deepgreen, bool l=false, real ls=1.0, real opac=0.1){
	path b = box((0,0),(1,10));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		filldraw(shift(sh+(i-1,0))*b, p+opacity(opac), drawpen=p1); 
		++cnt;
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt*10);
		 	label(lb,(I/2+sh.x,10+ls*0.6+sh.y));
		 }
}

void db(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=blue, pen p1=p, bool l=false, real ls=1.0, real opac=0.1){
	path b = box((0,0),(1,1));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(i-1,j-1))*b, p+opacity(opac), drawpen=p1); 
			++cnt;
			}
			} 
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt);
		 	label(lb,(I/2+sh.x,J+ls*0.6+sh.y));
		 }
}

void ddb(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=purple, bool l=true, real ls=1.0){
	real a = 0.2;
	real h = 0.5;
	path b = box((0,0),(a,h));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(i*a-a,j*h-h))*b, p+opacity(0.1), drawpen=p); 
			++cnt;
			}
			} 
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt);
		 	label(lb,(I/2+sh.x,J+ls*0.6+sh.y));
		 }
}

void sym(string l="", real xs=0, real ys=0.5, align al=NoAlign){
	label("$"+l+"$", (xs, ys), align=al);
}


void mktc(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
    draw((x,y), (0,0.1cm) -- (0,-0.1cm), p+0.75bp, L=Label(nm, position=pos));
    }   

void mktcy(real y, string nm="", pen p=black, real x=0, position pos=EndPoint){
    draw((x,y), (0.1cm,0) -- (-0.1cm,0), p+0.75bp, L=Label(nm, position=pos));
    }   
    

void xaks(real a, real b, string l="", real bex=0.75, real aex=0, 
				bool tck=true, bool tckl=false, real tc=1, 	real y=0, arrowbar ar=Arrow(TeXHead), 
					position pos=EndPoint){
    
    draw((a+aex,y) -- (b+bex,y), L=Label(l, position=EndPoint), arrow=ar);
    
    if (tck){
		int N = floor((b-a)/tc);
		for (int i=0; i<= N; ++i){
			real x = a+i*tc; 
			if (tckl){ mktc(x, format(x), y=y, pos=pos); }
			else mktc(x, y=y, pos=pos); 
			// For . istedenfor , skriv:
						     // mktc(i*tc, format(i*tc));
    	}
    
    }
}

void yaks(real a, real b, string l="", real bex=0.75, real aex=0, 
				bool tck=true, bool tckl=false, real tc=1, real x=0, arrowbar ar=Arrow(TeXHead),
						position pos=EndPoint ){
    
    draw((x,a+aex) -- (x,b+bex), L=Label(l, position=EndPoint), arrow=ar);
    
    if (tck){
		int N = floor((b-a)/tc);
		for (int i=0; i<= N; ++i){
			real y = a+i*tc; 
			if (tckl){ mktcy(y, format(y), x=x, pos=pos); }
			else mktcy(y, x=x, pos=pos); 
			// For . istedenfor , skriv:
						     // mktc(i*tc, format(i*tc));
    	}
    
    }
}



void mklb(string l, pair A){
	label(l, A, align=E);	
}

void dl(real a, real b){
	xaks(a,b);
	mktc(b,string(b));
}

void jmp(real x, real y=0.75, bool l=true, real xs=0, real ys=0){
	path p = (0,0.25)..(x/2,y)..(x,0.25);
	string lb = "";
	if (l == true){
			string name = "$%g$";
			lb = format(name, x);
		 	}
	draw(shift(xs,ys)*p, blue, arrow=Arrow(TeXHead), L=Label(lb,position=Relative(0.5),N));
}

// make bars
void br(real x, real y=0.75, bool l=true, real xs=0){
	path p = (0,y)--(x,y);
	string lb = "";
	if (l == true){
			string name = "$%g$";
			lb = format(name, x);
		 	}
	draw(shift(xs,0)*p, blue, L=Label(lb, position=Relative(0.5),N));
	mktc(xs+0, blue, y=y);
	mktc(xs+x, blue, y=y);
}

// make bars with fractions
void brbr(int m, int n, real y=0.75, bool l=true, real xs=0){
	path p = (0,y)--(m/n,y);
	string lb = "";
	if (l == true){
			string name = "$\frac{%d}{x}$";
			lb = format(name, m);
			lb = replace(lb, "x", (string) n); 
		 	}
	draw(shift(xs,0)*p, blue, L=Label(lb, position=Relative(0.5),N));
	mktc(xs+0, blue, y=y);
	mktc(xs+m/n, blue, y=y);
}

void tcks(real tc, int b, real y=0){
	for (int i=0; i*tc<= b; ++i){
		real x = i*tc; 
		mktc(x, format(x), y=y);
			}
			}
void tcksb(int tc, real b, real y=0){
	real dx = 1/tc;
	for (int i=0; i*dx<= b; ++i){
		real x = i*dx; 
		if (x  != 0){
			string tcn = (string) tc;
			string name = "$\frac{%d}{x}$";
			string l = format(name, i);
			string l = replace(l, "x", tcn); 
			mktc(x, l, y=y);
			}
		else mktc(x, format(x), y=y);
			}
			}			

void einar(int n=1, pair sh=(0,0), pen p=blue+opacity(0.1), pen p1=black){
	path uc = unitcircle;
	filldraw(shift(sh)*uc, p, p1);
	label("1",sh);
	if (n>1){
		for (int i=1; i < n; ++i){
			pair sh2 = (0,0.25*i);
			unfill(shift(sh+sh2)*uc);
			filldraw(shift(sh+sh2)*uc, p, p1);
			label("1",sh+sh2);
	}}	
}

void tiar(int n=1, pair sh=(0,0), pen p=green+opacity(0.1), pen p1=black){
	path uc = unitcircle;
	filldraw(shift(sh)*uc, p, p1);
	label("10",sh);
	if (n>1){
		for (int i=1; i < n; ++i){
			pair sh2 = (0,0.25*i);
			unfill(shift(sh+sh2)*uc);
			filldraw(shift(sh+sh2)*uc, p, p1);
			label("10",sh+sh2);
	}}	
}
  
void hundre(int n=1, pair sh=(0,0), pen p=orange+opacity(0.3), pen p1=black){
	path uc = unitcircle;
	filldraw(shift(sh)*uc, p, p1);
	label("100",sh);
	if (n>1){
		for (int i=1; i < n; ++i){
			pair sh2 = (0,0.25*i);
			unfill(shift(sh+sh2)*uc);
			filldraw(shift(sh+sh2)*uc, p, p1);
			label("100",sh+sh2);
	}}	
} 
 
void brok(int i=1, int j=1, int m=1, pair sh=(0,0), pen p=blue){
	real dx = 1./i;
	real dy = 1./j;
	path b = box((0,0), (dx,-dy));
	int cnt = 1;
	for (int x = 0; x < i; ++x){
		for (int y = 0; y < j; ++y){
			if (cnt <= m){
				fill(shift(sh)*shift(x*dx,-y*dy)*b, p+opacity(0.1));
				cnt+=1;
				}
			draw(shift(sh)*shift(x*dx,-y*dy)*b, p); 
			} 
		} 	
}

void brsym(string l="", real xs=0, real ys=-0.5, align al=NoAlign){
	label("$"+l+"$", (xs, ys), align=al);
}  

void xbox(pair sh=(0,0), bool sub=false){
	pen p = white;
	if(sub){p=red+opacity(0.1);}
	path b = box((0,0), (1.5,1.5));
	transform xbs = shift(sh);
	filldraw(xbs*b, p,black);
	label("$x$", xbs*(0.75,0.75)); 
}  

void teller(int i=1, int j=1, bool d=false, pair sh=(0,0), pen p=blue){
	real dx = 1./i;
	real dy = 1./j;
	path b = box((0,0), (dx,-dy));
	int cnt = 1;
		if (d == true){
			draw(shift(sh)*b, p); 
			cnt+=1;
			}
	fill(shift(sh)*b, p+opacity(0.1));
}

void mksq2(pair A=(0,0), pair B=(1,0), real l=1, real u=l, pen p=blue+0.9pt, real rot=0, bool h=true){
	real k = 0.3cm;
	pair nx = k*(B-A)/abs(B-A);
	pair ny = (nx.y, -nx.x);
	path sq;
    if (h){sq=l*nx--l*nx+u*ny--u*ny;}
    else sq=(0,0)--l*nx--l*nx+u*ny--u*ny--cycle;
    draw(A,rotate(rot)*sq, p);
    }
  
