import inh;
unitsize(1 cm);

path b = box((0,0), (1,1));

for (int i = 0; i <= 1; ++i){
	for (int j = 0; j <= 1; ++j){
		draw(shift(i,j)*b, blue);
		} 
    } 

filldraw(shift(0,1)*b, blue+opacity(0.1), drawpen=blue);
//label("$\frac{1}{4}$", shift(0,1)*(0.5,0.5));  

label("$\displaystyle = \frac{1}{4}$", (2.5,1.025));  
