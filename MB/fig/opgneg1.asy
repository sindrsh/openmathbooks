import "../../inh" as inh;
import figs;
unitsize(0.65 cm);

draw((-8, 0)--(8,0));
for(int i=-8; i<=8; ++i) {
	mktc(i, "");
}



mktc(0,"0");
mktc(1,"1");
mktc(2,"2");
mktc(-1,"$-1$");
mktc(-2,"$-2$");
