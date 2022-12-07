settings.outformat="pdf";
defaultpen(fontsize(16 pt));
unitsize(1 cm);

srand(200);

int[] mkrndlist(int[] l){
	if (l.length == 1){
		return l;
	}
	int[] s = sequence(l.length);
	int[] c = copy(l);
	int[] lnew;
	for (int i = 0; i < l.length; ++i){
		int r = rand() % (l.length-i);
		 lnew.push(c[r]);
		 c.delete(r);	
	}
	return lnew;	
}

int[] ns = {10,9,8,7,6,5,4,3,2,1,0};
int[] l = {10,9,8,7,6,5,4,3,2,1,0};
transform sh = shift(0,0);
real a = 4;
real c = 1.2;
path b = box((0,0),(a,c));

int j = 0;
int k = 0;

for (int n : l) {
	int r = rand() % ns.length;
	string s1 = (string) ns[r];
	int[] l2 = mkrndlist(ns);
	for (int i : l2){
			sh = shift(a*k,c*j);
			string s2 = (string) i;
			label("$"+s1+"\cdot"+s2+"=$", sh*(2.5,c/2),align=W);
			draw(sh*b);
			++k;
			if(k ==3){
				k = 0;
				++j;
			}
	}
	ns.delete(r);
}

