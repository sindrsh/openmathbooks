import figs;
import inh;

unitsize(0.5cm);

xaks(0,12,tckl=true);

void b(real x=1, real dx=0, real dy=0, pen p=blue){
	filldraw(shift(dx,dy)*scale(x,1)*unitsquare,p,black);
	label((string) x,(dx+x/2,dy+0.5));
}

real dy = 0.5;

for(int i; i<4; ++i){
	b(3,i*3,dy,p=green+opacity(0.2));
}

