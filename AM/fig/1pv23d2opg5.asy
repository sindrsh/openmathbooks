import "../../inhopg.asy" as inhopg;

size(7cm);

path p = unitcircle;
real v = pi/2.5;
pair Np1 = (cos(v), sin(v));
pair Np2 = (cos(v), -sin(v));

void k(int n, pair A) {
	for(int i=0; i<2*(n+2)-1; ++i) {
		filldraw(shift(A+(0, 2i))*p, arpeno);
	}
	int q = (n+2)-1;
	pair P = A+(2, 2*q);
	filldraw(shift(P)*p, arpeno);
	for(int i=0; i<q; ++i) {
		filldraw(shift(P+2*(i+1)*Np1)*p, arpeno);
		filldraw(shift(P+2*(i+1)*Np2)*p, arpeno);
	}
	label((P.x-0.5, -1), "K" + (string) n, S);
}

k(1, (0,0));
k(2, (9,0));
k(3, (19,0));
