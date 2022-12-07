settings.outformat="pdf";
unitsize(3 cm);
import math;
import fs;

real[] l= {809,
0.35,
139,
637,
89,
0.03,
0.28,
0.105,
0.004,
2.05 };

int n = 1;
int g = 10;
for (int i = 0; i < 5; ++i){
	for (int j = 0; j < 6; ++j){
		sh = shift(i, j);
		draw(sh*b);
		string s1 = (string) g;
		string s2 = (string) l[n-1];
		label("$"+s2+"\cdot"+s1+"$", sh*(0.5,0.5));
		++n;
		if (n>10){
		n=1;
		g=g*10;
		}
	}
}	



