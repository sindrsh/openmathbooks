settings.outformat="pdf";
defaultpen(fontsize(9 pt));
unitsize(0.5cm);

path b = unitsquare;

void f(int t=0){
	for(int i = 0; i<100; ++i){
		int j = i # 10;
		int k = i % 10;
		string s = (string) (i+1);
		
		if((i+1) % t == 0) {
			filldraw(shift(k, -j)*b, blue+opacity(0.5));
		}
		else {
			draw(shift(k, -j)*b);
		}
		label(s, (k+0.5, -j+0.5));
	}
	shipout((string) t);
	erase();
}

for(int k=2; k<12;++k) {
	f(k);
}
