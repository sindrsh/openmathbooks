import regreg;

size(9cm, 5cm, keepAspect=false);

real[] x = {0, 3, 6, 9, 12, 15, 18};
real[] y = {0, 9, 34, 66, 91, 100, 89};

real f(real x) {
	return 50.01 + 50.03*sin(2*pi*(x - 7.50)/29.34);
}

xaks(0, 18, tck=true, tc=3, l="$t$ dager", bex=1.05);
yaks(0, 100, bex=1.15, tck=true, tc=20, l="$B$ (\%)");
mkplot(x, y, f);

