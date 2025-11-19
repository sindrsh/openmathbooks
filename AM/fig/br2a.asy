import "../../figs" as figs;
import "../../inh" as inh;

unitsize(0.5cm);
path s = scale(4,1)*unitsquare;
real dx = 1;
real dy = 1;

pen p = arpen;
for (int j=0; j<3; ++j){
	draw(shift(1,j*dy)*s);
	fill(shift(1,j*dy)*s,p);
	label("4",(3,1/2+j));
}

filldraw(shift(-5,0)*scale(1,3)*s,arpen);

label("=",(0,1.5));
label("12",(-3,1.5));
