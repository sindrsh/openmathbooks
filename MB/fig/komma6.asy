import "../../inh" as inh;
import graph;

usepackage("icomma");

unitsize(0.25cm);

void num(string l, int position, pen p=black) {
	label(l, (-position, 0), p);
}

void comma(int position) {
	label(",", (-position+0.5, -0.7));
}

void move(int m) {
	real sign = m/abs(m);
	real angle1 = -180;
	real angle2 = 0;
	real s = 1;
	if (sign<0) {
		angle1 = 0;
		angle2 = -180;
		s = 0;
	}
	for(int i=0; i<abs(m); ++i) {
		draw(shift(s+sign*i,-0.5)*arc((0,0), 0.5, angle1, angle2), blue, arrow=Arrow(TeXHead));
	}
}

num("1", 2);
num("0", 1);
num("9", 0);
num("0", -1, green);
num("0", -2, green);
num("0", -3, green);
num("0", -4, green);
comma(0);

move(4);
