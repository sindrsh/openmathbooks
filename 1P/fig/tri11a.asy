import inh;
unitsize(0.5cm);


draw(box((0,0),(3,2)), black);
for (int i = 0; i <= 3; ++i){
	draw((i,0)--(i,2), dotted);
	}
	
for (int j = 0; j <= 2; ++j){
	draw((0,j)--(3,j), dotted);
	}	
label("3", (1.5,0), align=S);
label("2", (0,1), align=W);



