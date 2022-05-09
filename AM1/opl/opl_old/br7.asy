settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(2 cm);
real h = 2.3;
label("$\displaystyle \frac{11}{12}$", (4,h)); 
label("$\displaystyle \frac{2}{3}$", (7,h)); 
label("$+$", (5.5,h)); 
label("$=\quad?$", (8.8,h)); 

real xs = 2./3;
path b = shift(6,0)*box((0,0), (xs,2));

for (int i = 0; i <= 2; ++i){
		draw(shift(i*xs,0)*b, blue);
    } 
filldraw(shift(0,0)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(xs,0)*b, blue+opacity(0.1), drawpen=blue);

real ys = 2./4;
real xs = 2./3;
path b = shift(3,0)*box((0,0), (xs,ys));

for (int i = 0; i <= 2; ++i){
	for (int j = 0; j <= 3; ++j){
		draw(shift(i*xs,j*ys)*b, blue);
		if (i!=2 || j!=0){
		filldraw(shift(i*xs,j*ys)*b, blue+opacity(0.1), drawpen=blue); 
		}
		} 
    } 


//label("$\frac{1}{4}$", shift(0,1)*(0.5,0.5));  

