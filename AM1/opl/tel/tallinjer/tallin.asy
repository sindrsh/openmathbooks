settings.outformat="pdf";
defaultpen(fontsize(16 pt));
size(20cm);
real psize = 2bp;

defaultpen(psize);

void mktc(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
    draw((x,y), (0,0.15cm) -- (0,-0.15cm), p, L=Label(nm, position=pos));
    }

void mkl(int n, int tc = 1,real y=0.0, bool l=false){
	draw((0,0)--(n,0));
	for (int i=0; i*tc<= n; ++i){
			int x = i*tc; 
			if (l) {
				mktc(x, (string) x, y=y);
			}
			else { mktc(x, y=y); }
}
}





