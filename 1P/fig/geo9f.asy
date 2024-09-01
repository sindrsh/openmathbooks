import inh;
unitsize(1cm);
import geo0;


real s = 1.75;

pair p(real v, real r=1){
	return r*(cos(v), sin(v));
}
transform sh = shift(0,-2);
real v = pi/2;
draw((0,0)--(1,0)--p(v)--cycle, blue, L=Label("$\color{black}k$", position=Relative(0.5)));
label("$r$", (0.5,0), S);
label("$r$", (0,0.5), W);

draw(sh*((0,0)--(1.s,0)--p(v, 1.s))--cycle, blue, L=Label("$\color{black}K$", position=Relative(0.5)));
label("$R$", sh*(0.5,0), S);
label("$R$", sh*(0,0.5), W);

