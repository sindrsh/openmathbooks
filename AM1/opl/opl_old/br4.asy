settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(2 cm);

real h = 2.3;
path b = box((0,0), (1,1));

for (int i = 0; i <= 1; ++i){
	for (int j = 0; j <= 1; ++j){
		draw(shift(i,j)*b, blue);
		} 
    } 

filldraw(shift(0,1)*b, blue+opacity(0.1), drawpen=blue);
//label("$\frac{1}{4}$", shift(0,1)*(0.5,0.5));  

path b = shift(3,0)*box((0,0), (1,1));

for (int i = 0; i <= 1; ++i){
	for (int j = 0; j <= 1; ++j){
		draw(shift(i,j)*b, blue);
		} 
    } 

filldraw(shift(0,1)*b, blue+opacity(0.1), drawpen=blue);

path b = shift(6,0)*box((0,0), (2,2));


draw(b, blue);


label("$\displaystyle \frac{1}{4}$", (1,h)); 
label("$+$", (2.5,h)); 
label("$\displaystyle \frac{1}{4}$", (4,h)); 
label("$=$", (5.5,h)); 
