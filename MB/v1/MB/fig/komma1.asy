import "../../inh" as inh;
import graph;

usepackage("icomma");

unitsize(0.25cm);

void num(string l, int position) {
	label(l, (-position, 0));
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

num("2", 0);
num("4", -1);
num("6", -2);
comma(0);

move(2);
