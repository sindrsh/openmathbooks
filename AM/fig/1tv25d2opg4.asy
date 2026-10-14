import "../../inhopg.asy" as inhopg;

size(9.5cm);

void mkfg(int n) {
	pair A = (3n+3+(n+1)*n/2, 0);
	filldraw(shift(A)*unitsquare, arpeng);
	for(int i=0; i<n;++i) {
		filldraw(shift(A+(1+i, -1-i))*unitsquare, arpeng);
		filldraw(shift(A+(n+1,-i))*unitsquare, arpeng);
		for(int j=0; j<n;++j) {
			filldraw(shift(A+(1+i, 1+j))*unitsquare, arpeng);
		}
	}
	
	label("Figur "+ (string) n, A+(2,-3), S);
}

mkfg(1);
mkfg(2);
mkfg(3);

