import inh;
import figs;
unitsize(0.5 cm);

void mkfig(pair sh =(0,0), int n){
	db(n,n,sh=sh);
	db(n,1,sh=sh+(0,n),p=deepgreen);
	db(1,n,sh=sh+(n,0),p=deepgreen);
	label("$x = $"+(string) n, sh+((n+1)/2,-0.5));
}

real dx = 3;

mkfig(n=1);
mkfig(sh=2+dx, n=2);
mkfig(sh=5+2dx, n=3);

