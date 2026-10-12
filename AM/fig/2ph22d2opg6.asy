import "../../inhopg.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(6cm, 6cm, keepAspect=false);

pair[] ps = {(0, 10), (1, 18), (2, 35), (3, 61), (4, 108), (5, 189)};
string[] ss = {"2013", "2015", "2026", "2027", "2018", "2021"};
string[] ys = {"50", "100", "150", "200"};

mkgrid((0,6), (0, 200), dy=10, dx=6);

draw((0,0)--(6, 0));
draw((0,0)--(0, 200));

for(int i=0; i<6; ++i) {
	mktc(0.5+i, ss[i]);
	if (i>0) {
		draw(shift(0.5, 0)*(ps[i]--ps[i-1]), green);
	}
}

for(int i=0; i<6; ++i) {
	dott(ps[i]+(0.5, 0));
}

for(int i=0; i<4; ++i) {
	mktcy((i+1)*50, ys[i]);
}

label("år", (3,0), 5S);
label(rotate(90)*Label("antall tusen e-poster"), (0, 100), 7W);

