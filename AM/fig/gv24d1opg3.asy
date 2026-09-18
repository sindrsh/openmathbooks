import "../../inhopg" as inhopg;

unitsize(0.275cm);

pen p = purple;
pen r = red;
pen g = gray;
pen w = yellow;
pen b = Cyan;
pen gr = green;

pen[] ps = {p, r, g, w, b, gr};

real y = 0;
real xs = 0.4;


void mklb(pair A, string s, pen pn) {
	filldraw(shift(A)*unitsquare, pn);
	label(s, A+(1, 0.5), E);
}

pair A = (-21, 3);
pair B = A + (9, 0);
pair C = B + (12, 0);
pair D = C + (13, 0);
pair Ep = D + (8, 0);
pair F = Ep + (8, 0);

mklb(A, "ikke noe tid", p);
mklb(B, "under 30 minutter", r);
mklb(C, "30 minutter\,-\,1 time", g);
mklb(D, "1-2 timer", w);
mklb(Ep, "2-3 timer", b);
mklb(F, "mer enn 3 timer", gr);


void drbx(int i, real x, pen pn){
	filldraw(shift(xs*x, y)*scale(xs*i, 1)*unitsquare, pn);
	label((string) i, shift(xs*x, y)*(xs*i/2.0, 0.5));
}

void drwbxs(int[] is, string l) {
	real x = 0;
	for(int i=0; i<6; ++i) {
		drbx(is[i], x, ps[i]);
		x += is[i];
	}
	label(l, (0, y+0.5), W);
}

int[] is = {3, 9, 12, 19, 20, 37};
drwbxs(is, "SOSIALE MEDIER");

y = -1.5;
int[] is = {4, 10, 22, 28, 18, 18};
drwbxs(is, "FILMER/SERIER/YOUTUBE");

y = -3;
int[] is = {28, 27, 16, 12, 7, 10};
drwbxs(is, "SPILL P\AA\, TELEFON/NETTBRETT");

y = -4.5;
int[] is = {29, 29, 20, 13, 5, 4};
drwbxs(is, "SE P\AA TV");

y = -6;
int[] is = {40, 10, 10, 13, 11, 16};
drwbxs(is, "DATASPILL/TV-SPLL");

y = -7.5;
int[] is = {64, 21, 8, 3, 2, 2};
drwbxs(is, "LESE B\O KER\, (IKKE SKOLEB\O KER)");


//label("TID BRUKT P\AA\, ULIKE MEDIER", (10, 7));
//label("Tallene viser prosentandelen av svarene", (10, 5));
