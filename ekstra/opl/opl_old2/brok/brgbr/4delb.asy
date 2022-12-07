settings.outformat="pdf";
defaultpen(fontsize(12 pt));
defaultpen(1.5pt);
unitsize(14cm);

void mkl(real n){
	real y = -0.06;
	draw((0,0)--(1,0), black+1bp);
	draw((0,-0.02)--(0,0.02), black);
	draw((1,-0.02)--(1,0.02), black);
	real tc = 1/n;
	for (int i=1; i*tc< 1; ++i){
			real x = i*tc; 
			draw((i*tc,-0.02)--(i*tc,0.02), black);
				}
}
mkl(4);

