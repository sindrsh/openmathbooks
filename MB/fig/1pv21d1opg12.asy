import "../../inhopg" as inhopg;

size(6cm);

path b = unitsquare;

void mkmatches(int n, pair A) {
	for(int i = 0; i<n; ++i) {
		for(int j=0; j<n; ++j) {
			draw(shift(A+(i,j))*b);
		}
	}
	for(int i = 0; i<=n; ++i) {
		for(int j=0; j<=n; ++j) {
			dott(shift(A)*(i, j));
		}
	}
	label("Figur " + (string) n , shift(A)*(n/2, 0), 2S);
}

mkmatches(1, (0,0));
mkmatches(2, (2, 0));
mkmatches(3, (5, 0));
