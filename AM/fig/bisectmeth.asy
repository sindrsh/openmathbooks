import "../../inh" as inhopg;
import "../../drwgrph" as drwgrph;

size(3.5cm, 3cm, keepAspect=false);

real b0 = 1.5;
real a = 0.2;
real b = b0;
string[] alpha = {"a", "b", "c", "d", "e", "f"};

real f(real x) {
	return (x-1)*(x-2)*(x+3);
}



for(int i=0; i<5; ++i) {
	real m = (a+b)/2;
	xaks(0, b0, "$x$");
	yaks(-1.4, 6, "$f$");
	draw(graph(f, 0, b0), blue);
	string astring = "a_"+ (string) i;
	string bstring = "b_"+ (string) i;
	string mstring = "m_"+ (string) i;
	mktc(a, "$"+astring+"$");
	mktc(b, "$"+bstring+"$");
	position pos = BeginPoint;
	if (i==0) {
		pos = EndPoint;
	}
	mktc(m, "$"+mstring+"$", pos=pos);
	dott((m, f(m)));
	
	shipout("bisectmeth_"+ alpha[i]);
	
	if (f(a)*f(m)< 0) {
		b = m;
	}
	else {
		a = m;
	}
	erase();
	
}

