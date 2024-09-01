import inh;
import figs;
unitsize(1cm);




transform sh = shift(3,-0.5)*rotate(30);
path s = (0,0.5)--(2,0.5);
draw(s);
draw(sh*s);
dott((0,0.5),"$A$",N);
dott((2,0.5),"$B$",N);

dott(sh*(0,0.5),"$C$",N);
dott(sh*(2,0.5),"$D$",N);
