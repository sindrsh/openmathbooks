import "../../inh" as inh;
import figs;
defaultpen(fontsize(9pt));
unitsize(0.6 cm);

draw((-8, 0)--(8,0));
for(int i=-8; i<=8; ++i) {
	mktc(i, "");
}


mktc(0,"0");
mktc(1,"1");
mktc(2,"2");
mktc(-1,"$-1$");
mktc(-2,"$-2$");
mktc(3, "3");
mktc(-4, "$-4$");
mktc(-8, "$-8$");
mktc(7, "7");
mktc(-3, "$-3$");
mktc(5, "5");
mktc(-5, "$-5$");
