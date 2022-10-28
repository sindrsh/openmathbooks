import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(10cm);

xaks(0,5,tck=false);
xaks(0,-5,tck=true);

for(int i=-5; i<=5; ++i){
	string s = (string) i;
	mktc(i,"$"+s+"$");
}
