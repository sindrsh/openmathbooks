import regreg;

size(9cm, 5cm, keepAspect=false);

real[] x = {0, 50, 100, 150, 200, 220}; 
real[] y = {1.00, 1.26, 1.65, 2.50, 6.14, 7.84};

real f(real x) {
	x=0.3*x;
	return 0.2+0.800*1.05^x;
}

xaks(0, 250, tck=true, tc=50, l="$t$ (m\aa neder)", bex=1.05);
yaks(0, 8, bex=1.15, tck=true, tc=1, l="$B$ (milliarder)");
mkplot(x, y, f);
