import inh;
unitsize(0.5 cm);

import figs;

void xtre(pair sh=(0,0), bool sub=false){
	pen p = white;
	if(sub){p=red+opacity(0.1);}
	path b = box((0,0), (0.5,1.5));
	transform xbs = shift(sh);
	filldraw(xbs*b, p,black);
	label("$\small\frac{x}{3}$", xbs*(0.25,0.75)); 
}  

xtre(sh=-0.5);
sym("=",1);

db(2,2, sh=2);
