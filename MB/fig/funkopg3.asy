import inh;
import figs;
unitsize(0.5 cm);

void mkfig(pair sh =(0,0), int n){
	db(4,1,p=deepgreen,sh=sh);
	db(n,2,sh=sh+(0,1));
	label("$x = $"+(string) n, sh+(2,-0.5));
}

real dx = 3;

mkfig(n=1);
mkfig(sh=4+dx, n=2);
mkfig(sh=8+2dx, n=3);

