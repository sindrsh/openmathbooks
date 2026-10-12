import p2h22d2opg4;

real f(real x) {
	return x;
}

for(int i=0; i<6; ++i) {
	dot((dx+i, f(dx+i)));
}

label((3, 0), "B", 2S);

