settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(0.25 cm);

path s = unitcircle;

real dx = 2.5;
int c = 0;

int a = 9;
int b = a+3;

for(int i=0; i<a;++i){
	filldraw(shift(dx*i)*s,mediumgrey);
	++c;
}

for(int j=c; j<b;++j){
	filldraw(shift(dx*j)*s,white);
}



