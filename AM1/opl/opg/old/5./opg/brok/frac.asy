import figs;
void circ(int n=3, int t=0, pair sh=(0,0)){
	real v = 2*pi/n;
	real r = 1;
	int cnt = 0;
	for (int i=0; i<=n; ++i){
		pair p1 = (cos(v*i), sin(v*i));
		if (i>=1){
			path a = arc((0,0), 1, v*(i-1)*180/pi, v*i*180/pi);
			path p = (0,0)--a--cycle;
			p = shift(sh)*p;
			if (cnt<t+1){
				filldraw(p, black+opacity(0.5));
				write("hei");
			}
			else draw(p);
		}
		++cnt;
	}
}

void poly(int n=3, int t=0){
	real v = 2*pi/n;
	real r = 1;
	pair[] L;
	int cnt = 0;
	for (int i=0; i<=n; ++i){
		pair p1 = (cos(v*i), sin(v*i));
		L.push(p1);
		if (i>=1){
			path p = (0,0)--L[i-1]--L[i]--cycle;
			if (cnt<t+1){
				filldraw(p, black+opacity(0.5));
				write("hei");
			}
			else draw(p);
		}
		++cnt;
	}
}




