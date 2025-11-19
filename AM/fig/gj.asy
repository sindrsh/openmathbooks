settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(0.5 cm);

path b = box((0,0), (1,4));

real A = 0;
real B = 1;
path n = (A,2)--(B,2);
pen p=blue;

real dx = B-A;

for (int j = 0; j <= 7; ++j){
	filldraw(shift(j*(dx+1),0)*b, p+opacity(0.1), drawpen=blue); 
	draw(shift(j*(dx+1),0)*((0,4)--(1,4)), p=black+fontsize(9pt)+opacity(0),L="0,25", align=N);
    }
for (int j = 0; j <= 6; ++j){
	draw(shift(2*j+1)*n, dotted,L="$x$", align=N);
    }    

  
  
