import inh;
import drwgrph;

size(5cm);

void mklinegraph(string[] xs, real[] ys, real yend, real tcy=1, real sc=1) {
	int n = xs.length;
	dott((0.5, ys[0]));
	mktc(0.5, xs[0]);
	draw((0,0)--(n, 0));
	draw((0,0)--(0, yend));
	for(int i=1; i<n; ++i) {
		dott((i+0.5, ys[i]));
		draw((i-0.5, ys[i-1])--(i+0.5, ys[i]), blue);
		mktc(i+0.5, xs[i]);
	}
	
	real tc = tcy;
	int cnt = 0;
	while((cnt+1)*tc <= yend) {
		real y = (cnt+1)*tc;
		mktcy(y, (string) y);
		cnt += 1;
	}
}


void mkgridstat(pair A, pair B, real dx=1, real dy=1, pen p=mediumgray){
	for (int i=1; A.x + i*dx<= A.y; ++i){
		draw((A.x + i*dx - 0.5, B.x)--(A.x + i*dx - 0.5, B.y), p);
}
	for (int i=0; B.x + i*dy <= B.y; ++i){
		draw((A.x, B.x+ i*dy)--(A.y,B.x+ i*dy), p);
}
}
