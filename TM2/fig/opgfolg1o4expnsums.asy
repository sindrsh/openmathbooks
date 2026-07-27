import "../../inhopg" as inh;

size(4cm);

void drwsquares(real x, pair A) {
	draw(shift(A+(x, 0))*scale(x)*unitsquare);
	filldraw(shift(A+(0, 0))*scale(x)*unitsquare, arpeng);
	draw(shift(A+(0, x))*scale(x)*unitsquare);
}

for(int i=0; i<7; ++i) {
	pair A = (1-1/2^i, 1-1/2^i);
	write(A);
	real x = 1/2^(i+1);
	drwsquares(x, A);
}

draw(shift(1/2, 1/2)*scale(1/2)*unitsquare);
