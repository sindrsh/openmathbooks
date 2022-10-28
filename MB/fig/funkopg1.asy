import inh;
import figs;
unitsize(0.5 cm);

void mkfig(pair sh =(0,0), int n){
	db(n,n,sh=sh);
	db(n,n,sh=sh+(n,n));
	db(n,n,sh=sh+(2n,2n));
	db(n,n,sh=sh+(0,2n));
	db(n,n,sh=sh+(2n,0));
	label("$x = $"+(string) n, sh+(3*n/2,-0.5));
}

real dx = 3;

mkfig(n=1);
mkfig(sh=3+dx, n=2);
mkfig(sh=9+2dx, n=3);

