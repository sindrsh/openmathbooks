import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;
size(11cm);

pair f(real x) {
	return (cos(x), sin(x));
}

pair O = (0, 0);
pair A = (1, 0);
pair B = f(pi/6);
pair C = f(pi/4);
pair D = f(pi/3);

write(D);


void mkABC(pair a, transform sh, string v, string c, string s) {
	
	dv(sh*a, sh*A, sh*O, v, sc=0.2, 0.5N+E);
	draw(sh*(O--a), green);
	draw(sh*(graph(f, 0, pi/2)--O--cycle));
	draw(sh*((a.x, 0)--a--(0, a.y)));
	
	label(c, sh*(a.x/2, 0)+(0, a.y), S);
	label(s, sh*(0,a.y/2), W);
	dott(sh*O, "$A$", S);
	dott(sh*(a.x, 0), "$B$", S);
	dott(sh*a, "$C$", NE);
	dott(sh*(0, a.y), "$D$", W);
}

pair[] ps = {B, C, D};
string[] vs = {"$u$", "$v$", "$t$"};
string[] cs = {"$\frac{\sqrt{3}}{2}$", "$\frac{\sqrt{2}}{2}$", "$\frac{1}{2}$"};

for(int i=0; i<3; ++i) {
	mkABC(ps[i], shift(i*1.35, 0), vs[i], cs[i], cs[2-i]);
}


