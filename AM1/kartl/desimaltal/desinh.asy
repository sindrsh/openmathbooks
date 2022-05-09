settings.outformat="pdf";
defaultpen(fontsize(11 pt));
//defaultpen(1bp);
usepackage("icomma");
usepackage("amsmath");
usepackage("amssymb");

pen res = cmyk(1,0,1,0);
pen neg = Cyan;
pen start = blue;
pen pos = blue;
pen pluss =cmyk(green);
pen arpen = blue+opacity(0.15);
pen arpeno = orange+opacity(0.4);
pen arpenr = red+opacity(0.15);
pen arpenc = Cyan+opacity(0.2);
pen arpeng = cmyk(green)+opacity(0.2);

void dott(pair A, Label L="$$", pair Al=(0,0),pen p=black){
	dot(A, L=L,Al,p+4pt);
}

void mkb(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=white, pen p1=black, bool l=false, real ls=0.0, real opac=0.1, real y = 0, pair sc=(1,1)){
	path b = box((0,0),realmult(sc,(1,1)));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(0,y*(j-1))+realmult(sc,(i-1,j-1)))*b, p, drawpen=p1); 
			++cnt;
			}
			} 
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt);
		 	label(lb,(I/2+sh.x,-ls+sh.y),S);
		 }
}

void line_sep(real a, real b, real y){
	draw((a,y)--(b,y),dotted+1bp);	
}

