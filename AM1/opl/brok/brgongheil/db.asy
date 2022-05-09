settings.outformat="pdf";
defaultpen(fontsize(16 pt));
defaultpen(1.5pt);
unitsize(1cm);

void db(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=white, pen p1=black, bool l=false, real ls=1.0, real opac=0.1){
	path b = box((0,0),(1,1));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(i-1,j-1))*b, p+opacity(opac), drawpen=p1); 
			++cnt;
			}
			} 
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt);
		 	label(lb,(I/2+sh.x,J+ls*0.6+sh.y));
		 }
}


