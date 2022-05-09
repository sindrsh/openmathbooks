settings.outformat="pdf";
defaultpen(fontsize(16 pt));
unitsize(1 cm);

int[] l= {2,5,3,6,1,7,9,8,4};
transform sh = shift(0,0);
string s1 = "10";
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
