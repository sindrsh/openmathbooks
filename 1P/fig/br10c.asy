import inh;
import broks;
unitsize(2cm);
draw((0,0)--(4,0));
tcksb(3,4);


for (int i = 0; i*2/3 < 4; ++i){
	brbr(2,3, l=false,y=-0.5, xs=2/3*i,arw=true);
	label("$\frac{2}{3}$", (1/3*(i+1)+1/3*i,-0.7));
}

label("1", (1,0.1), align=N);
label("2", (2,0.1), align=N);
label("3", (3,0.1), align=N);
label("4", (4,0.1), align=N);
