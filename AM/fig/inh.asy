settings.outformat="pdf";
defaultpen(fontsize(11 pt));
settings.render = 5;
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
