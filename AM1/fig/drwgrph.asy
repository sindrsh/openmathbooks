import graph;

// Postscripts
   
void mktcy(real y, string nm=""){
    draw((0,y), (0.1cm,0) --(-0.1cm,0), L=Label(nm, position=EndPoint));    
    }   

void mktc(real x, string nm=""){
    draw((x,0), (0,0.1cm) --(0,-0.1cm), L=Label(nm, position=EndPoint));
    }   
// ------------------

void xaks(real a, real b, string l="", real bex=1.15, real aex=1, bool tck=false, real tc=1){
    draw((a*aex,0) -- (b*bex,0), L=Label(l,
    position=EndPoint), arrow=Arrow(TeXHead));
    
    if (tck){
		int N = floor((b-a)/tc);
		for (int i=0; i<= N; ++i){
			real x = a+i*tc; 
			if (x!= 0){
				mktc(x, format(x));} // For . istedenfor , skriv:
									  		// mktc(i*tc, format(i*tc));
    	}
    
    }
}
void yaks(real a, real b, string l="", real bex=1.15, real aex=1, bool tck=false, real tc=1){
    draw((0, a*aex) -- (0, b*bex), L=Label(l,
    position=EndPoint), arrow=Arrow(TeXHead));
    if (tck){
		int N = floor((b-a)/tc);
		for (int i=0; i<= N; ++i){
			real y = a+i*tc;
			if (y != 0){
				mktcy(y, format(y));} // For . istedenfor , skriv:
									  		// mktc(i*tc, format(i*tc));
    	}
    
    }    
}


  
void mksq2(pair A=(0,0), pair B=(1,0), real k=0.3cm, int l=1, int u=1, pen p=black, real r=0){
	real k = 0.3cm;
	pair nx = k*B/abs(B);
	pair ny = (-nx.y, nx.x);
    draw(A, rotate(r)*((0,0)+l*nx--l*nx+u*ny--u*ny), p);
    } 
     
void mkgrid(pair A, pair B, real dx=1, real dy=1, pen p=lightgray){
	int nx = floor(abs((A.y-A.x)/dx));
	int ny = floor(abs((B.y-B.x)/dy)); 
	for (int i=floor(A.x); i*dx<= floor(A.y); ++i){
		draw((i*dx, B.x)--(i*dx, B.y), p);
}
	for (int i=floor(B.x); i*dy<= floor(B.y); ++i){
		draw((A.x, i*dy)--(A.y, i*dy), p);
}
}
