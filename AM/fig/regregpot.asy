import regreg;

size(9cm, 5cm, keepAspect=false);

real[] x = {10, 12, 14, 16, 18};
real[] y = {180, 280, 420, 600, 850};

real f(real x) {
	return 0.41*x^2.63;
}

xaks(0, 20, tck=true, tc=2, l="$v$ (knop)");
yaks(0, 900, tck=true, tc=200, bex=1.05, l="$y$ (L/h)");
mkplot(x, y, f);
