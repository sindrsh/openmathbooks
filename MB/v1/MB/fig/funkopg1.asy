import "../../inh" as inh;
import figs;
unitsize(0.45 cm);

void mkfig(pair sh =(0,0), int n){
	db(n,n,sh=sh,  opac=0.6);
	db(n,n,sh=sh+(n,n), opac=0.6);
	db(n,n,sh=sh+(2n,2n), opac=0.6);
	db(n,n,sh=sh+(0,2n), opac=0.6);
	db(n,n,sh=sh+(2n,0), opac=0.6);
	label("$x = $"+(string) n, sh+(3*n/2,-0.5));
}

real dx = 3;

mkfig(n=1);
mkfig(sh=3+dx, n=2);
mkfig(sh=9+2dx, n=3);

