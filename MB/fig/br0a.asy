import inh;
import figs;
unitsize(2cm);

brok(3,1,2);
brsym("\displaystyle =\frac{2}{3}", 1.3);

real xs=2;
brok(2,5,7,sh=(xs,0));
brsym("\displaystyle =\frac{7}{10}", xs+1.3);

xs = 4;
brok(4,5,19,sh=(xs,0));
brsym("\displaystyle =\frac{19}{20}", xs+1.3);
