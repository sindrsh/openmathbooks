import inh;
import figs;
unitsize(0.5 cm);


draw((0,0)--(10,0),heavygreen);
draw((10,0)--(14,0),blue);
for(int i=1; i<15;++i){
	if(i>9){ mktc(i,(string) i); }
	else mktc(i,"");
}
mktc(10,"10");
mktc(0,"0");
