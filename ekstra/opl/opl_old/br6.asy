settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(2 cm);

path b = box((0,0), (1,1));

for (int i = 0; i <= 1; ++i){
	for (int j = 0; j <= 1; ++j){
		draw(shift(i,j)*b, blue);
		} 
    } 

filldraw(shift(0,1)*b, blue+opacity(0.1), drawpen=blue);
real h = 2.3;
label("$\displaystyle \frac{1}{4}$", (1,h)); 
label("$=$", (2.5,h)); 

path b = box((0,0),(2,2));
draw(shift(3,0)*b, blue);
//label("$\frac{1}{4}$", shift(0,1)*(0.5,0.5));  

