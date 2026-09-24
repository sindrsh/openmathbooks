import "../../inhopg.asy" as inh;

size(7cm);

void mkb(int p, pen pn, pair A=(0,0)) {
	for(int i = 0; i<p; ++i) {
		for(int j = 0; j<p; ++j) {
			filldraw(shift(A)*shift(i,j)*unitsquare, pn);
	}
	}
}

void mb(int i, pair A=(0,0)) {
	mkb(i, arpen, A);
	mkb(i-2, white, A+(1, 1));
	mkb(i-2, arpenr, A+(1, 1));
	label(shift(A)*(i/2, 0), "Figur "+ (string) (i-2), S);
}

mb(3);
mb(4, A=(5, 0));
mb(5, A= (11, 0));
mb(6, A=(18,0));

