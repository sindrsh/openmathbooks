settings.outformat="png";
defaultpen(fontsize(11 pt));

real n = 62;
unitsize(n*0.0352778cm);
settings.render = -1;

defaultpen(2bp);

void db(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=blue, pen p1=p, bool l=false, real ls=1.0){
	path b = box((0,0),(1,1));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(i-1,j-1))*b, p, drawpen=black); 
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

db(p=white);

