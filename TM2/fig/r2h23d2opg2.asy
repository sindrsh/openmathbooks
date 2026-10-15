import "../../inhopg" as asy;
import "../../geo" as geo;

real s = 1.4;
real[] scales = {1, 2, 3, 4};
void drawpolygon(int n) {
	path p = scale(scales[n-2])*polygon(5);
	draw(p);
	for(int i=0; i<5; ++i) {
		pair P1 = point(p, i);
		dott(P1, blue);
		if (n > 2) {
				pair PP = (point(p, 0)-point(p, 4))/(n-1);
			if (i<4) {
				PP = (point(p, i+1)-point(p, i))/(n-1);
			}
			for(int j=0; j<n-2; ++j){
				pair P2 = P1 + (j+1)*PP;
				dott(P2, blue);
			}
		}
	}
}

unitsize(0.5cm);

real y = 3;

dott((0,0), blue);
