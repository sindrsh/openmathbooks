settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(0.25 cm);

path s = unitcircle;

real dx = 2.5;


int a = 2;
int b = a+7;
int c = b+4;

int d = 0;
for(int i=0; i<a;++i){
	filldraw(shift(dx*i)*s,mediumgrey);
	++d;
}

for(int j=d; j<b;++j){
	filldraw(shift(dx*j)*s,white);
	++d;
}

for(int k=d; k<c;++k){
	filldraw(shift(dx*k)*s,black);
}

