settings.outformat="pdf";
defaultpen(fontsize(9 pt));
unitsize(0.8cm);

real a = 0.5;
path b = box((0,0),(1,a));


int[] h = {1,2,3,4,5,6,7,8,9,10};
int[] v = {1,2,3,4,5,6,7,8,9,10};

for (int i : h) {
	label(format("\textbf{%d}",i),(i+0.5,a/2));
	filldraw(shift(i,0)*b,lightgrey);
}
for (int i : v) {
	label(format("\textbf{%d}",i),(0.5,-i*a+a/2));
	filldraw(shift(0,-i*a)*b,lightgrey);
}

pair A = (0,0);

for (int i : h) {
	for (int j : v) {
		pen p = white;
		if (j % 2 == 0) { p =blue+opacity(0.15); }
		filldraw(shift(i,-j*a)*b,p);
		if (i <= j) {
			label((string) (i*j),(i+0.5,-j*a+a/2));
		}
	}
}
