import regreg;

size(9cm, 5cm, keepAspect=false);

real[] x = {0, 3, 6, 9, 12, 15, 18};            // timer
real[] y = {9.6, 29.0, 119.1, 350.7, 594.8, 640.8, 661.8};  // gjærceller (tusen)

real f(real x) {
	return 665 / (1 + exp(-0.58*(x - 8.7)));
}

xaks(0, 18, tck=true, tc=30, l="$t$ (timer)", bex=1.05);
yaks(0, 700, bex=1.1, tck=true, tc=100, l="$G$ (tusen)");
mkplot(x, y, f);

