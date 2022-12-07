settings.outformat="pdf";
unitsize(3 cm);
import math;
import fs;

real[] l= {2,3,4,5,6,7,8,9};

int n = 1;
int g = 10;
int cnt = 11;
for (int i = 0; i < 5; ++i){
	for (int j = 0; j < 8; ++j){
		if (cnt == 11+32){break;}
		sh = shift(i, j);
		draw(sh*b);
		string s1 = (string) (cnt*l[n-1]);
		string s2 = (string) l[n-1];
		label("$"+s1+":"+s2+"$", sh*(0.5,0.5));
		++n;
		if (n>8){
		n=1;
		g=g*10;
		}
		++cnt;
	}
}

draw(shift(3,8)*b);
label("168", shift(3,8)*(0.5,0.5));	

draw(shift(2,8)*b);
label("207", shift(2,8)*(0.5,0.5));	

draw(shift(1,8)*b);
label("74", shift(1,8)*(0.5,0.5));	

draw(shift(0,8)*b);
label("805", shift(0,8)*(0.5,0.5));	

