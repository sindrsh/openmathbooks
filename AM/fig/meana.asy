import "../../inh" as inh;
import "../../drwgrph" as inh;
unitsize(0.5cm);

xaks(0,12,tck=true);
mktc(0);

void b(real x=1, real dx=0, real dy=0, pen p=blue){
	draw((dx, dy)--(dx+x, dy), blue);
	mktc(x+dx, y=dy);
	mktc(dx, y=dy);
	label((string) x,(dx+x/2,dy+0.5));
}

real dy = 0.75;

b(1,0,dy,p=blue+opacity(0.2));
b(6,1,dy,p=red+opacity(0.2));
b(3,7,dy,p=green+opacity(0.2));
b(2,10,dy,p=orange+opacity(0.2));
