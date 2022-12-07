settings.outformat="pdf";
defaultpen(fontsize(16 pt));
unitsize(1 cm);

int[] l= {9,3,5,6,1,4,7,2,8};
transform sh = shift(0,0);
string s1 = "2";
real a = 3.5;
real c = 1.2;
path b = box((0,0),(a,c));

int j = 0;
int k = 0;

for (int i : l){
		sh = shift(a*k,c*j);
		string s2 = (string) i;
		label("$"+s1+"\cdot"+s2+"=$", sh*(1,c/2));
		draw(sh*b);
		++k;
		if(k ==3){
			k = 0;
			++j;
		}
}
