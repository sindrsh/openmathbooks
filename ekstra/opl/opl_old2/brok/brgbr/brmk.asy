settings.outformat="pdf";
defaultpen(fontsize(16 pt));
defaultpen(1.5pt);
unitsize(14cm);

void mkl(real n){
	real y = -0.06;
	draw((0,0)--(1,0), black+1bp);
	draw((0,-0.02)--(0,0.02), black);
	draw((1,-0.02)--(1,0.02), black);
	label("0", (0,y));
	label("1", (1,y));
	real tc = 1/n;
	for (int i=1; i*tc< 1; ++i){
			real x = i*tc; 
			draw((i*tc,-0.02)--(i*tc,0.02), black);
			string k2l = (string) n;
    		string name = "$\frac{%d}{x}$";
   			string l = format(name, i);
    		string l = replace(l, "x", k2l); 
    		label(l, (i*tc,y));
				}
}
