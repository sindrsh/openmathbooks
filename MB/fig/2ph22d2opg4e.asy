import p2h22d2opg4;

real f(real x) {
	return 6*dx/x;
}

real[] ls = {0.25, 0.75, 1.4, 2.5, 3.9, 5};

for (real i : ls) {
	dot((dx+i, f(dx+i)));
}

label((3, 0), "E", 2S);

