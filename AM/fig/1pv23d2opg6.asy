import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;
size(8cm, 0cm);

pen p = blue;

void drawline(real l, real c) {
	draw(shift(c, 0)*((0,0)--(l,0)), black);
	mktc(c);
	mktc(c+l);
	real s = l*100;
	label(shift(c, 0)*(l/2, 0), (string) s, S);
}

real l = 1;
real c = 0;

for(int i=0; i<3; ++i) {
	if (i % 2 == 0) {
		p = red;
	}
	else {
		p = blue;
	}
	l = 0.9^i;
	drawline(l, c);
	write(l*100);
	c += l;
}
