import "../anm.asy" as figs;

usepackage("asycolors");
import x11colors;
usepackage("xcolor");

label((-2.8,1.8),"\textit{Eksempel 3}",blue+fontsize(8pt));

void gang(int n, pair A=(0,0), real dy=-0.3, int nn=0, pen p=black){
	for (int i = 1; i <= 10; ++i){
	string s = "$"+(string) i +"\cdot" + (string) n +"="+(string) (i*n)+"$";
		if (i!=nn){
		if (i*n<10){
			s = "$"+(string) i +"\cdot" + (string) n +"=\phantom{0}"+(string) (i*n)+"$";
		}
		label(s,shift(A)*(0,i*dy),p+fontsize(9pt),align=W); 
		}
		else
			if (i*n<10){
			s = "${\color{heavygreen}"+(string) i +"}\cdot" + (string) n +"=\phantom{0}\color{blue}"+(string) (i*n)+"$";
			}
			else
			s = "${\color{heavygreen}"+(string) i +"}\cdot" + (string) n +"=\color{blue}"+(string) (i*n)+"$";
			label(s,shift(A)*(0,i*dy),p+fontsize(9pt),align=W);
	}
}


real dx = 0.25;
real dy = -0.5;
transform sh = shift(-3,1.3);

for (int i = -1; i < 10; ++i){
		draw(sh*((i*2dx,-dy/2)--(i*2dx,6.5dy)),grey);
	}


path l = (0,0)--(2dx,0);

label("\color{cyan}1",sh*(-dx,0));
label("\color{cyan}2",sh*(dx,0));
label("1",sh*(3dx,0));
label("8",sh*(5dx,0));
label("$:$",sh*(7dx,0));
label("6",sh*(9dx,0));
label("$=$",sh*(11dx,-0.025));


gang(6,A=(3.5,1.5),nn=2);



label("\color{heavygreen}2",sh*(13dx,0));

label("\color{blue}1",sh*(-dx,dy));
label("\color{blue}2",sh*(dx,dy));
/*

draw(sh*shift(-2dx,1.5dy)*scale(2)*l);
label("0",sh*(dx,2dy));
label("1",sh*(3dx,2dy));


label("0",sh*(3dx,3dy));
label("0",sh*(15dx,0));

draw(sh*shift(0,3.5dy)*scale(2)*l);

label("\color{cyan}1",sh*(3dx,4dy));

label("\color{cyan}8",sh*(5dx,4dy));

label("\color{red}1",sh*(3dx,5dy));
label("\color{red}8",sh*(5dx,5dy));

draw(sh*shift(2dx,5.5dy)*scale(2)*l);
label("0",sh*(5dx,6dy));


label("4",sh*(17dx,0));
*/

