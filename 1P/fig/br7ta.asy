import inh;
import broks;

draw((0,0)--(1,0));
mktc(0, "0");
mktc(1,"1");

brbr(1,2,xs=3/5-1/2,p=red, arw=true);
brbr(3,5,p=blue, arw=true, y=0.3);

real xs = 1.3;
mkbroktick(10,1,1, xs=xs);
mkbroktick(10,5/10,1,xs=xs);
label("=",(1.15,0));
brbr(6,10,p=blue, xs=xs,arw=true, y=0.3);
brbr(5,10,xs=xs+3/5-1/2,arw=true,p=red);
