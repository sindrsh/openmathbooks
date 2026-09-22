import "../../inhopg" as inh;

size(3cm);

filldraw(shift(2,-3)*unitsquare, arpenr);
filldraw(shift(2,-4)*unitsquare, arpenr);
filldraw(shift(3,-3)*unitsquare, arpenr);
filldraw(shift(3,-4)*unitsquare, arpenr);

filldraw(shift(1,-1)*unitsquare, arpen);
filldraw(shift(2,-1)*unitsquare, arpen);
filldraw(shift(1,-2)*unitsquare, arpen);
filldraw(shift(2,-2)*unitsquare, arpen);

int cnt = 0;
for(int n=1; n<6; ++n) {
	for(int m= 1; m<6; ++m) {
		++cnt;
		draw(shift(m, -n)*unitsquare);
		label((string) cnt, (m+0.5, -(n-0.5)));
	}
}

