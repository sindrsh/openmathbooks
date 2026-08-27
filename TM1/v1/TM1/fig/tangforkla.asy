import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1.5cm);

pair f(real x){
	return (cos(x), sin(x));
}

ds(O, 1,black);

pair A = f(-pi/3);
pair n = (-A.y, A.x);

real t = 1;
pair B = A+t*n;
pair D = A+0.75t*n;
pair C = A-t*n;

draw(B--C,deepgreen);
draw(O--A,dotted);

draw(O--D,dotted);

//dv(O,B,A,"$v$",N+0.5E,sc=0.1);
//dv(O,A,D,"$v?$",W,sc=0.1,D=(-2pi,0),p=red);

dott(O, "$S$",NW);
dott(A,"$A$",SE);
dott(D,"$B$",SE);

