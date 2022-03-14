import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(0.75cm);


real a = 5;
real b = 4;

pair A = (a,b);

draw(O--A,deepgreen, L=Label("$\color{black}|\vec v|$", align=NW,position=Relative(0.5)));
draw(O--(A.x,0),deepgreen, L=Label("$\color{black}x_1$", align=S,position=Relative(0.5)));
draw(A--(A.x,0),deepgreen, L=Label("$\color{black}y_1$", align=E,position=Relative(0.5)));
