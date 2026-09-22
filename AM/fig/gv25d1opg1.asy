import "../../inhopg" as inhopg;

unitsize(0.275cm);

pen p = blue;
pen r = Orange;
pen g = gray;
pen w = yellow;
pen b = Cyan;
pen gr = green;

pen[] ps = {p, r, g, w, b, gr};

real y = 0;
real xs = 0.2;


void mklb(pair A, string s, pen pn) {
	filldraw(shift(A)*unitsquare, pn);
	label(s, A+(1, 0.5), E);
}

pair A = (-20, 3);
pair B = A + (9, 0);
pair C = B + (12, 0);
pair D = C + (13, 0);
pair Ep = D + (8, 0);
pair F = Ep + (8, 0);

mklb(A, "5 dager i uka", p);
mklb(B, "3-4 dager i uka", r);
mklb(C, "1-2 dager i uka", g);
mklb(D, "sjeldnere", w);


void drbx(int i, real x, pen pn){
	filldraw(shift(xs*x, y)*scale(xs*i, 1)*unitsquare, pn);
	label((string) i, shift(xs*x, y)*(xs*i/2.0, 0.5));
}

void drwbxs(int[] is, string l) {
	real x = 0;
	for(int i=0; i<4; ++i) {
		drbx(is[i], x, ps[i]);
		x += is[i];
	}
	label(l, (0, y+0.5), W);
}

int[] is = {54, 12, 11, 23};
drwbxs(is, "Frokost f\o r skolen");

y = -1.5;
int[] is = {65, 17, 8, 10};
drwbxs(is, "Lunsj p\aa\, skolen");

y = -3;
int[] is = {21, 17, 22, 40};
drwbxs(is, "Gr\o nnsaker, frukt eller b\ae r p\aa skolen");

