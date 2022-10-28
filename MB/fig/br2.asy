import inh;
unitsize(1 cm);

path b = box((0,0), (1,1));

for (int i = 0; i <= 1; ++i){
	for (int j = 0; j <= 1; ++j){
		draw(shift(i,j)*b, blue);
		filldraw(shift(i,j)*b, blue+opacity(0.1), drawpen=blue);
		label("$\frac{1}{4}$", shift(i,j)*(0.5,0.5));  
		} 
    }
    
label("$=\;1$", (2.6, 1));     

