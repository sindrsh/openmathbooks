import "/home/sindre/G/fig/figs.asy" as figs;
settings.outformat="pdf";
defaultpen(fontsize(12 pt));

unitsize(0.75 cm);

void db2(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), string l=""){
	path b = box((0,0),(1,1));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(i-1,j-1))*b, white, drawpen=black); 
			++cnt;
			}
			} 
		}
		label(l,(I/2+sh.x,J+0.6+sh.y));
}

db2(6,2);






