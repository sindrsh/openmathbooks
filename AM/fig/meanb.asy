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

for(int i; i<4; ++i){
	b(3,i*3,dy,p=green+opacity(0.2));
}

