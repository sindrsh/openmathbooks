settings.outformat="pdf";

defaultpen(1pt);

void mktc(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
    draw((x,y), (0,0.15cm) -- (0,-0.15cm), p+1.5pt, L=Label(nm, position=pos));
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

void jmp(real x, real y=0.75, bool l=true, real xs=0, real ys=0,string lb2=""){
	path p = (0,0.25)..(x/2,y)..(x,0.25);
	string lb = "";
	if (l == true){
			string name = "$%g$";
			lb = format(name, x);
		 	}
	draw(shift(xs,ys)*p, black, arrow=Arrow(TeXHead), L=Label(lb2,position=Relative(0.5),N));
	draw(shift(xs,ys)*p, black, arrow=Arrow(TeXHead), L=Label(lb,position=Relative(0.5),S));
}





