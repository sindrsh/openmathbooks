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
filldraw(shift(1,1)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(0,0)*b, blue+opacity(0.1), drawpen=blue);
//label("$\frac{1}{4}$", shift(0,1)*(0.5,0.5));  


path b = shift(3.1,0)*box((0,0), (2,2));

draw(b, blue);

real h = 2.3;
label("$\displaystyle \;\;: 2 =\; $", (2.5,1.025));

label("$\displaystyle \frac{3}{4}$", (1,h)); 
