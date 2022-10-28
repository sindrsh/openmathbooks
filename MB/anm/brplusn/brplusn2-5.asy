import "../anm.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));
usepackage("asycolors");
import x11colors;
usepackage("xcolor");



void gang(int n, pair A=(0,0), real dy=-0.2, int nn=0, pen p=blue){
	for (int i = 1; i <= 10; ++i){
		string s = "$"+(string) i +"\cdot" + (string) n +"="+(string) (i*n)+"$";
		if (i*n<10){
			write("hei");
			s = "$"+(string) i +"\cdot" + (string) n +"=\phantom{0}"+(string) (i*n)+"$";
		}
		if (i!= nn){
			label(s,shift(A)*(0,i*dy),black+fontsize(6pt),align=W);
		}
		else 
		label(s,shift(A)*(0,i*dy),p+fontsize(6pt),align=W); 
	}
}

real y = -1;
real x = 0.45;
real xs =-3.02;
real mp = 0.15;
label("${\frac{{\color{orange}9}}{{\color{orange}4}}}$",(xs,y));
label("$+$",(xs+x,y+0.035));
label("${\frac{{\color{deepgreen}7}}{{\color{deepgreen}6}}}$",(xs+2x,y));
label("=",(xs+3x,y));
label("${\frac{{\color{orange}9}\cdot3}{{\color{orange}4}\cdot3}}$",(xs+4x+mp,y));
label("$+$",(xs+1.5mp+5x,y+0.035));
label("${\frac{{\color{deepgreen}7}\cdot2}{{\color{deepgreen}6}\cdot2}}$",(xs+6x+2mp,y));
label("$=$",(xs+3mp+7x,y));
gang(4,A=(2,2),nn=3);
gang(6,A=(3.5,2),nn=2);

label("${\frac{{\color{orange}27}}{{\color{orange}12}}}+{\frac{{\color{deepgreen}14}}{{\color{deepgreen}12}}}$",(xs+9x+4mp,y));
label("$=$",(xs+5mp+11x,y));
label("$\frac{41}{12}$",(xs+5mp+12x,y));



