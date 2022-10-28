import "../../inh" as inh;
import "../../drwgrph" as grph;
import "../../geo" as geo;


unitsize(2cm);

pair f(real x){
	return (cos(x), sin(x));
}

real x = pi/4;
pair A = f(x);
draw(unitcircle);
draw((0,1)--(0,-1));
draw((1,0)--(-1,0));

draw((0,0)--A,blue, L=Label("\color{black}$x$",position=EndPoint));

draw((0,A.y)--A--(A.x,0),dotted);

mktcy(A.y,"$\sin x$");
mktc(A.x, "$\cos x$");

