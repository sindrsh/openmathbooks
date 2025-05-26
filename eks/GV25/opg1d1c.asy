import "../../inh" as inh;
unitsize(0.4cm);


int n = 5;
for(int i=0; i<n; ++i){
	for(int j=0; j<n; ++j) {
		filldraw(shift(i,j)*unitsquare, blue+opacity(0.2));
	}
}

for(int i=0; i<n-2; ++i){
	for(int j=0; j<n-2; ++j) {
		filldraw(shift(1+i,j+1)*unitsquare, white);
		filldraw(shift(1+i,j+1)*unitsquare, yellow+opacity(0.2));
	}
}
