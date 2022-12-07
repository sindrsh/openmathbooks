import "../../../../inh" as inh;
import "../../../../drwgrph" as geo;
settings.outformat = "png";
defaultpen(2bp);
defaultpen(fontsize(24 pt));
unitsize(1.5 cm);



real a = 20;

real h = 1;
real dx = 0.2;
filldraw(box((-dx,-h), (a+dx,h)), white);

xaks(0,a, bex=1);

for(int k=0; k<a; ++k){
	mktc(k,"");	
}

mktc(0,"0");
mktc(10,"1");
mktc(5,"0,5");
mktc(1.5,"1,5");
mktc(17, "", red);





