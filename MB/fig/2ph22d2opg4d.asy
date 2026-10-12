import p2h22d2opg4;

real f(real x) {
	return x;
}

for(int i=0; i<6; ++i) {
	dot((3, f(dx+i)));
}

label((3, 0), "D", 2S);

