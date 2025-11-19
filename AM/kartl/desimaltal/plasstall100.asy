import desinh;
import "../figs" as fig;
unitsize(8cm);

void mktc(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
	draw((x,y), (0,0.075cm) -- (0,-0.075cm), p+0.75bp, L=Label(nm, position=pos));
    }
void mktc10(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
	draw((x,y), (0,0.1cm) -- (0,-0.1cm), p+0.75bp, L=Label(nm, position=pos));    
    }    
    
void mktcb(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
    draw((x,y), (0,0.15cm) -- (0,-0.15cm), p+0.75bp, L=Label(nm, position=pos));
    }    
    
void xaks(real a, real b, string l="", real bex=0.75, real aex=0, 
				bool tck=true, bool tckl=false, real tc=1, 	real y=0, arrowbar ar=Arrow(TeXHead), position pos=EndPoint, bool omite=false, bool bth = false){
    if (a>=0 && bth==false){
   		draw((a+aex,y) -- (b+bex,y), L=Label(l, position=EndPoint), arrow=ar);
    }
    else draw((a+aex-bex,y) -- (b+bex,y), L=Label(l, position=EndPoint), arrow=Arrows(TeXHead));
    
    if (tck){
		int N = floor((b-a)/tc);
		int i = 0;
		if (omite){
			bex =tc+bex;
			N = N-1;
			i = 1;
		}
		for (i; i<= N; ++i){
			real x = a+i*tc; 
			if (tckl){ mktc(x, string(x), y=y, pos=pos); }
			else mktc(x, y=y, pos=pos); 
			// For . istedenfor , skriv:
						     // mktc(i*tc, format(i*tc));
    	}
    
    }
}    
