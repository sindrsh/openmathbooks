import regreg;

size(9cm, 5cm, keepAspect=false);

real[] x = {-10.3, -6.4, -4.0, 0.1, 4.3, 7.8};
real[] y = {1.866, 1.732, 1.613, 1.517, 1.332, 1.237};

real f(real x) {
	return 1.5+0.035*x;
}

xaks(-12, 10, tck=true, tc=2, l="$T\,(^\circ\text{C})$");
yaks(0, 2, bex=1.15, l="$F$ (TWh)");
mkplot(x, y, f);

mktcy(0.5, "$0.5$");
mktcy(1, "$1.0$");
mktcy(1.5, "$1.5$");
mktcy(2, "$2.0$");
