settings.outformat="pdf";
unitsize(3 cm);
import math;
import fs;

void mkbingo(){
	int[] l;
	bool ch(int x){
		if (l.length == 0){return true;}
		bool z = true;
		for (int i = 0; i < l.length; ++i){
			if (l[i]==x){ 
				z=false; 
				}
		}
		return z;
	}

	srand(seconds());
	for (int j = 0; j <= 21; ++j){
		int v1 = rand() % 29; // % X angir X funksjoner aa velge mellom
		if (ch(v1)){l.push(v1);}
		else{ j=j-1; }
		}
	write(sum(l));	 

	int cnt = 0;
	for (int i = 0; i < 4; ++i){
		for (int j = 0; j < 4; ++j){
			sh = shift(i, j);
			draw(sh*b);
		    string f = format("f%d()", l[cnt]);
		    ++cnt;
			eval(f, true);
			}
	}	
}

for (int i=1; i<= 9; ++i){
	string s = format("fig%d", i);
	mkbingo();
	sleep(1);
	shipout(s, wait=false);
	erase();
}
exit();

