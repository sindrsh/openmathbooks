import regreg;

size(9cm, 4.7cm, keepAspect=false);

real[] x = {0, 30, 60, 90};
real[] y = {4.2, 8.1, 17.5, 37.0};

real f(real x) {
	return 4.08 * 1.0246^x; //2481.29 * exp(0.377319*x);
}

xaks(0, 90, tck=true, tc=30, l="$t$ (minutter)", bex=1.05);
yaks(0, 40, bex=1.1, l="$B$ (milliarder)");
mkplot(x, y, f);

mktcy(10, "10,0");
mktcy(20, "20,0");
mktcy(30, "30,0");
mktcy(40, "40,0");

