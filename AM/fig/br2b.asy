import "../../figs" as figs;
import "../../inh" as inh;

unitsize(0.5cm);
path s = scale(4,1)*unitsquare;
real dx = 1;
real dy = 1;

pen p = arpen;
for (int j=1; j<3; ++j){
	draw(shift(0,j*dy)*s);
	fill(shift(0,j*dy)*s,p);
	label("4",(2,1/2+j));
}

filldraw(shift(6,1)*scale(4,2)*unitsquare, arpen);
label("$=$",(5,2));
label("8", (8, 2));


