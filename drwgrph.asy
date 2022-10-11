import graph;

// Postscripts
   
void mktcy(real y, string nm="", position pos=EndPoint, real x=0){
    draw((x,y), (0.1cm,0) --(-0.1cm,0), L=Label(nm, position=pos));    
    }   

void mktc(real x, string nm="", position pos=EndPoint, real y=0){
    draw((x,y), (0,0.1cm) --(0,-0.1cm), L=Label(nm, position=pos));
    }   

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

void mkgrid(pair A, pair B, real dx=1, real dy=1, pen p=lightgray){
	int nx = floor(abs((A.y-A.x)/dx));
	int ny = floor(abs((B.y-B.x)/dy)); 
	for (int i=0; floor(A.x) + i*dx<= floor(A.y); ++i){
		draw((A.x + i*dx, B.x)--(A.x + i*dx, B.y), p);
}
	for (int i=0; floor(B.x) + i*dy <= B.y; ++i){
		draw((A.x, B.x+ i*dy)--(A.y,B.x+ i*dy), p);
}
}

