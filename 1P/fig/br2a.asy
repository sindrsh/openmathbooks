import figs;
import inh;

unitsize(0.5cm);
path s = scale(4,1)*unitsquare;
real dx = 1;
real dy = 1;

pen p = arpen;
for (int j=0; j<3; ++j){
	if (j==1){p=arpeno;}
	if (j==2){p=arpenc;}
	draw(shift(0,j*dy)*s);
	fill(shift(0,j*dy)*s,p);
	label("4",(2,1/2+j));
}

filldraw(shift(-5,0)*scale(1,3)*s,arpeng);

label("=",(-0.5,1.5));
label("12",(-3,1.5));
