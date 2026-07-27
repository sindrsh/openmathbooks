import "../../inhopg" as inh;

size(4cm);

pen p = arpen;
void drwsquares(real x, pair A) {
	filldraw(shift(A+(x, 0))*scale(x)*unitsquare, p);
	filldraw(shift(A+(0, 0))*scale(x)*unitsquare, p);
	filldraw(shift(A+(0, x))*scale(x)*unitsquare, p);
}

for(int i=0; i<7; ++i) {
	if(i % 2 == 1) {
		p = arpenr;
	}
	else {
		p = arpen;
	}
	pair A = (1-1/2^i, 1-1/2^i);
	real x = 1/2^(i+1);
	drwsquares(x, A);
}

draw(shift(1/2, 1/2)*scale(1/2)*unitsquare);
