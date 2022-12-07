settings.outformat="pdf";
unitsize(3 cm);
import math;
import fs;

int cnt = 0;
int n =0;
for (int i = 0; i < 5; ++i){
	for (int j = 0; j < 8; ++j){
		if (cnt == 31){break;}
		sh = shift(i, j);
		draw(sh*b);
		string f = format("f%d()", cnt);
		eval(f, true);
		++n;
		if (n>8){
		n=1;
		}
		++cnt;
	}
}
