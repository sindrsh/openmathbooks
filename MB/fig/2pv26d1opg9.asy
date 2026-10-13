import "../../inhopg.asy" as opginh;
import "../../drwgrph.asy" as drwgrph;
import "../../geo.asy" as geo;

size(10cm);

mkgrid((0, 26), (0, 4), dx=1, dy=2);

pair O = (0, 0);
pair B = (6,0);
pair C = (2, 4);
filldraw(O--B--C--cycle, arpeng);

pair A = (8, 0);
pair B = (10,0);
pair C = (4, 4);
filldraw(A--B--C--cycle, arpeng);

pair A = (14, 0);
pair B = (20,0);
pair C = (19, 4);
pair D = (10, 4);
filldraw(A--B--C--D--cycle, arpeng);

pair f(real x) {
	return (cos(x), sin(x));
}

pair Sp = (24, 2);
pair A = (24, 4);
path p = scale(2)*graph(f, pi/2, 2pi)--O--cycle;
filldraw(shift(Sp)*p, arpeng);
dott((Sp));




draw(O--(0,4));
draw(O--(26,0));



mktcy(2, "2");
mktcy(4, "4");

for(int i=1; 2*i<28; ++i) {
	mktc(2*i, (string) (2*i));
}


