unitsize(1cm);
settings.outformat="pdf";

void mktc(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
    draw((x,y), (0,0.1cm) -- (0,-0.1cm), p+1bp, L=Label(nm, position=pos));
    }   

void xaks(real a, real b, string l="", real bex=0.75, real aex=0, 
				bool tck=true, bool tckl=false, real tc=1, 	real y=0, arrowbar ar=Arrow(TeXHead), 
					position pos=EndPoint){
    
    draw((a+aex,y) -- (b+bex,y), L=Label(l, position=EndPoint));
    
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



xaks(0,25,bex=0,tckl=true);
label((12.5,-1),"Centimeter");


