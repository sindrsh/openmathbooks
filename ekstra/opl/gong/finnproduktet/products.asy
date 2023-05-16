settings.outformat="pdf";
unitsize(1 cm);

int[] ints = {};

for (int i=1; i < 11; ++i){
	for (int j=2; j < 11; ++j){
		bool unique = true;
		for (int n : ints){
			if (n == i*j){
				unique = false;
				break;
			}
		}
		if (unique){
			ints.push(i*j);
		}
	}
}

real a = 3;
real h = 3;
path b = scale(a,h)*unitsquare;

int c = 0;
int l = 8;
for (int n : ints){
	pair A = (a*(c # l), h*(c % l));
	draw(shift(A)*b);
	label(scale(4)*Label(string(n)), A + (a/2, h/2));
	++c;
}
