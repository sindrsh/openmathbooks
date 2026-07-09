import "../../inh" as inh;
import "../../geo" as geo;

unitsize(0.25cm);

real a = 1;
real b = 5;

path p1 = polygon(6);
path p2 = scale(b)*polygon(6);

pair[] getVertices(path p) {
	pair[] ps;
	for(int i=0; i<6; ++i) {
		ps.push(point(p, i));
	}
	return ps;
}

pair[] p1s = getVertices(p1);
pair[] p2s = getVertices(p2);

write(abs(p1s[4]-p1s[3]));
write(abs(p2s[4]-p2s[3]));

draw(p1);
p2 = shift(p1s[4]+p2s[4]-p2s[2]+p2s[1])*p2;
draw(p2);

pair[] p2s = getVertices(p2);


Tri t = mktri(abs(p1s[1]-p2s[3]), abs(p2s[4]-p2s[3]), abs(p1s[1]-p2s[4]));
t.mkR();
transform ts = shift(p2s[4])*rotate(degrees(p1s[1]-p2s[4]));

pair A = ts*t.A;
pair B = ts*t.B;
pair C = ts*t.C;

ds(ts*t.Rs, t.R);

pair P = intersectionpoint(p2s[3]--p2s[0]+2*(p2s[0]-p2s[3]), shift(ts*t.Rs)*scale(t.R)*unitcircle);

path p3 = scale(abs(P-p2s[0]))*polygon(6);
pair[] p3s = getVertices(p3);
draw(shift(P+p3s[2])*p3);
p3s = getVertices(shift(P+p3s[2])*p3);

write(abs(P-p2s[0]));

write(t.R^2, 4/3+2*b+b^2);
pair Rs = ts*t.Rs;
dott(ts*t.Rs);
write((a-(2a+b)/2,-1/sqrt(3)*(a+3b/2)), ts*t.Rs);

draw(Rs--p1s[1]);
dv(p1s[1], p2s[4], Rs);
