import "../../inh" as inh;
import "../../geo" as geo;

unitsize(2cm);

pair A = (0,-1);
pair B = (1,pi/3);
pair O = (0,0);

draw((-0.5,0)--(1.3,0),L=Label("$uv$",position=EndPoint), dotted);

draw(O--A,L="$\vec{u}\times\vec{v}$",align=W,Arrow);
draw(O--B,L="$\vec{w}$",Arrow);
draw((B.x,0)--B,dotted,L="$h$",align=E);

dv(A,B,O,"$\theta$",SE,sc=0.2);
