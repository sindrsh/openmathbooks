settings.outformat="pdf";
unitsize(2cm);
defaultpen(fontsize(11 pt));
defaultpen(2bp);

void sqr(int n=3, int t=0, pair sh=(0,0), bool breakloop = false){
	real dx = 1./n;
	int cnt = 0;
	for(int i = 0; i < n; ++i){
		draw(shift(sh)*shift(dx*i,0)*scale(dx,1)*unitsquare);
		if (cnt < t){
			filldraw(shift(sh)*shift(dx*i,0)*scale(dx,1)*unitsquare, red+opacity(0.7));
		}
		if (cnt == t && breakloop){
			break;
		}
		++cnt;

	}
}


void circ(int n=3, int t=0, pair sh=(0,0), bool breakloop=false){
	real v = 2*pi/n;
	real r = 1;
	int cnt = 0;
	for (int i=0; i<=n; ++i) {
		pair p1 = (cos(v*i), sin(v*i));
		if (i>=1){
			path a = arc((0,0), 1, v*(i-1)*180/pi, v*i*180/pi);
			path p = (0,0)--a--cycle;
			p = shift(sh)*p;
			if (cnt<t+1){
				filldraw(p, deepgreen+opacity(0.5));
			}
			else draw(p);
		}
		if (cnt == t && breakloop){
			break;
		}
		++cnt;
	}
}

void poly(int n=3, int t=0, pair sh = (0,0), bool breakloop=false){
	real v = 2*pi/n;
	real r = 1;
	pair[] L;
	int cnt = 0;
	for (int i=0; i<=n; ++i){
		pair p1 = (cos(v*i), sin(v*i));
		L.push(p1);
		if (i>=1){
			path p = (0,0)--L[i-1]--L[i]--cycle;
			p = shift(sh)*p;
			if (cnt<t+1){
				filldraw(p, deepgreen+opacity(0.5));
			}
			else draw(p);
		}
		if (cnt == t && breakloop){
			break;
		}
		++cnt;
	}
}
