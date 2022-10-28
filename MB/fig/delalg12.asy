import inh;
import figs;


unitsize(0.2 cm);

path b = box((0,0),(10,10));

real dx = 1.5;

int n = 1;
for(int i; i<n; ++i){
	db(I=1,J=10, sh=(i*dx,0));
}

db(I=1, J=2, sh=(n*dx,0));


