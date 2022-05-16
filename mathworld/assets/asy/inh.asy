settings.outformat="pdf";
defaultpen(fontsize(11 pt));

real n = 10;
size(n*0.0264583333cm);
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
pen arpeno = orange+opacity(0.15);
pen arpenr = red+opacity(0.15);
pen arpenc = Cyan+opacity(0.2);
pen arpeng = cmyk(green)+opacity(0.2);

void dott(pair A, Label L="$$", pair Al=(0,0),pen p=black){
	dot(A, L=L,Al,p+4pt);
}

void ds(pair A=(0,0), real s=1, pen p=black){
	draw(shift(A)*scale(s)*unitcircle,p=p);
}

void db(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=blue, pen p1=p, bool l=false, real ls=1.0, real opac=0.1){
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

