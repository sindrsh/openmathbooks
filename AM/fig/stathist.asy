import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(12cm);

real[] fs = {202, 306, 662, 1199, 223, 50};
int[] is = {15, 25, 30, 40, 60, 65, 75};

real dx = 10;

mktc(15-dx, "15");


for(int i = 0; i < is.length-1; ++i) {
	real h = fs[i]/(is[i+1]-is[i]);
	filldraw(box((is[i]-dx,0), (is[i+1]-dx, h)), arpeng);
	mktc(is[i+1]-dx, (string) is[i+1]);
}

yaks(0, 70, tck=true, tc=5, bex=1.05);
mktcy(0, "0");

label((-4, 75), "antall 1000 ansatte per år", E);
label((40, -5), "årsintervall");


