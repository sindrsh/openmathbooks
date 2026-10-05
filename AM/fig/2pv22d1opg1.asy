import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(11cm, 7cm, keepAspect=false);

mkgrid((0,90), (0, 60000), dx=10, dy=5000);

xaks(0, 90, bex=1.05,tck=true, tc=10, "antall stoler");
yaks(0, 60000, bex=1.05, "kostnad (kr)");

draw((0, 15000)--(90, 60000), green);

for(int i = 1; i*5000<=60000; ++i) {
	mktcy(i*5000, (string) (i*5000));
}
