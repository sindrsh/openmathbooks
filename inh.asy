settings.outformat="pdf";
//defaultpen(fontsize(12 pt));
//defaultpen(1bp);
import x11colors;
usepackage("asycolors");
//usepackage("xcolor");
import texcolors;
usepackage("icomma");
usepackage("amsmath");
usepackage("amssymb");

pen Blue = NavyBlue;
pen red = Red;
pen green = cmyk(green);
pen blue = Cyan;
pen purple = Purple;
pen res = cmyk(1,0,1,0);
pen neg = Cyan;
pen start = blue;
pen pos = blue;
pen pluss =cmyk(green);
pen arpen = Blue+opacity(0.15);
pen arpeno = YellowOrange+opacity(0.5);
pen arpenr = Red+opacity(0.5);
pen arpenc = Cyan+opacity(0.5);
pen arpeng = cmyk(green)+opacity(0.5);

void dott(pair A, Label L="$$", pair Al=(0,0),pen p=black){
	dot(A, L=L,Al,p+4pt);
}

void ds(pair A=(0,0), real s=1, pen p=black){
	draw(shift(A)*scale(s)*unitcircle,p=p);
}
