import "../anm.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 3}",blue+fontsize(8pt));

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

label("$\frac{8}{7}-\frac{5}{42}=\frac{8\cdot6}{7\cdot6}-\frac{5}{42}=\frac{48}{42}-\frac{5}{42}=\frac{43}{42}$",(-3.5,-0.75),E);

gang(7,A=(2,2),nn=6);
