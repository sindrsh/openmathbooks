import "../anm.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

real dx = 0.25;
real dy = -0.5;
transform sh = shift(-2.5,1);

for (int i = 0; i < 8; ++i){
		draw(sh*((i*2dx,-dy/2)--(i*2dx,4.5dy)),grey);
	}


path l = (0,0)--(2dx,0);

label("7",sh*(dx,0));
label("6",sh*(3dx,0));
label("$:$",sh*(5dx,0));
label("4",sh*(7dx,0));
label("$=$",sh*(9dx,-0.025));

label("1",sh*(11dx,0));
label("9",sh*(13dx,0));

label("4",sh*(dx,dy));
draw(sh*shift(0,1.5dy)*l);

label("3",sh*(dx,2dy));
label("6",sh*(3dx,2dy));
label("3",sh*(dx,3dy));
label("6",sh*(3dx,3dy));
draw(sh*shift(0,3.5dy)*scale(2)*l);

label("0",sh*(3dx,4dy));

void gang(int n, pair A=(0,0), real dy=-0.3, int nn=0, pen p=blue){
	for (int i = 1; i <= 10; ++i){
		string s = "$"+(string) i +"\cdot" + (string) n +"="+(string) (i*n)+"$";
		if (i*n<10){
			write("hei");
			s = "$"+(string) i +"\cdot" + (string) n +"=\phantom{0}"+(string) (i*n)+"$";
		}
		write(s);
		if (i!= nn){
			label(s,shift(A)*(0,i*dy),black+fontsize(9pt),align=W);
		}
		else 
		label(s,shift(A)*(0,i*dy),p+fontsize(9pt),align=W); 
	}
}

gang(4,A=(3,1.5));

