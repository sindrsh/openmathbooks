settings.outformat="pdf";
defaultpen(fontsize(26 pt));
unitsize(1 cm);

int[] l2 = {10,9,8,7,6,5,4,3,2};
int[] ns1 = {4,3,2,1,0};
int[] ns2 = {10,9,8,7,6,5};
transform sh = shift(0,0);
real a = 5;
real c = 1.4;
path b = box((0,0),(a,c));

int j = 0;
int k = 0;

void mktable(int[] numbers, string shipt){
	for (int n : numbers) {
		string s1 = (string) n;
		for (int i : l2){
				sh = shift(a*k,c*j+j*0.5);
				string s2 = (string) i;
				label("$"+s1+"\cdot"+s2+"=$", sh*(3.4,c/2),align=W);
				label((string) (i*n), sh*(5,c/2),align=W);
				draw(sh*b);
				++k;
				if(k == 4){
					k = 0;
					++j;
				}
		}
	}
	shipout(shipt);
	erase();
}

mktable(ns1, "part1");
mktable(ns2, "part2");
exit();
