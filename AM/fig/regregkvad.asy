import regreg;

size(6cm, 5cm, keepAspect=false);

real[] x = {0.25, 0.35, 0.45, 0.55, 0.65};
real[] y = {0.307, 0.605, 0.994, 1.487, 2.080};

real f(real x) {
	return 665 / (1 + exp(-0.58*(x - 8.7)));
}

xaks(0, 0.61, tck=true, tc=0.1, l="$t$ (s)", bex=1.05);
yaks(0, 2, bex=1.1, tck=true, tc=0.5, l="$G$ (tusen)");
mkplot(x, y, f);

