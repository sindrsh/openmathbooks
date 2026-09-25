import inh;
import drwgrph;

size(5cm);

void mklinegraph(string[] xs, real[] ys, real yend, real tcy=1, real sc=1) {
	int n = xs.length;
	dott((1, ys[0]));
	mktc(1, xs[0]);
	draw((0,0)--(n+1, 0));
	draw((0,0)--(0, yend));
	for(int i=1; i<n; ++i) {
		dott((i+1, ys[i]));
		draw((i, ys[i-1])--(i+1, ys[i]), blue);
		mktc(i+1, xs[i]);
	}
	
	real tc = tcy;
	int cnt = 0;
	while((cnt+1)*tc <= yend) {
		real y = (cnt+1)*tc;
		mktcy(y, (string) y);
		cnt += 1;
	}
}
