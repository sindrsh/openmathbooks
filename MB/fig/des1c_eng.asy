import inh;
import figs;
unitsize(8 cm);

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
			if (tckl){ mktc(i*tc, (string) x); }
			else mktc(x, y=y, pos=pos); 
    	}
    
    }
}
xaks(0,1, tck=true, tckl=true, tc=0.1, bex=0.1);
mktc(0,"$0$");
mktc(1,"$1$");




