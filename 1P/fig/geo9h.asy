import inh;
unitsize(2cm);
import geo0;



pair p(real v, real r=1){
	return r*(cos(v), sin(v));
}
pair p1 = p(pi/3);
draw((0,0)--p1, deepgreen, L=Label("$\color{black}C$", align=E, position=Relative(1)));
draw((0,0)--(0,1), deepgreen, L=Label("$\color{black}S$", align=S, position=Relative(0)));
draw(p1--(0,p1.y), blue,L=Label("$\color{black}B$", align=W, position=Relative(1)));

draw((0,1)--p1, blue, L=Label("$\color{black}A$", align=N, position=Relative(0)));



