import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1.25cm);

pair f(real x){
	return (cos(x), sin(x));
}

ds(O, 1,blue);

pair A = f(-pi/3);
pair n = (-A.y, A.x);

real t = 1;
pair B = A+t*n;
pair C = A-t*n;

mksq2(A,O);

draw(B--C,deepgreen);
draw(O--A,dotted);

dott(O, "$S$",NW);
dott(A,"$A$",SE);


