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
sym("+",1);
xtre(sh=2);
sym("+",3.5);
xtre(sh=4.5);
sym("=",6);
db(2,2, sh=7);
sym("+",10);
db(2,2, sh=11);
sym("+",14);
db(2,2, sh=15);
