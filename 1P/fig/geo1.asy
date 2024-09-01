import inh;
import figs;
unitsize(0.5cm);


draw(box((0,0),(5,4)), black);
//label("1", (0.5,0), align=S);
//label("1", (0,0.5), align=W);

for (int i = 0; i <= 5; ++i){
	draw((i,0)--(i,4), dotted);
	}
	
for (int j = 0; j <= 4; ++j){
	draw((0,j)--(5,j), dotted);
	}	
