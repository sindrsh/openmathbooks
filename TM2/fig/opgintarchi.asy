import "../../inhopg" as inh;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(5cm, 5cm, keepAspect=false);

real f(real x){
	return 2*(x-2)*(x-4);
}

real x1 = 1;
real x2 = 7;

pair A = (x1, f(x1));
pair B = (x2, f(x2));
real x3 = 1/2*(x1+x2);
pair C = (x3, f(x3));
pair s = 1/2*(A+B)-C;
pair Am = A-s;
pair Bm = B-s;



draw(graph(f, x1, x2));
draw(Am--Bm, red);

filldraw(graph(f, x1, x2)--cycle, arpen);
filldraw(A--B--C--cycle, white);
filldraw(A--B--C--cycle, arpeng);

dott(A, "$A$", NW);
dott(B, "$B$", NE);
dott(C, "$C$", S);

Tri t = mktri(abs(A-C), abs(A-B), abs(C-B));

write(t.Ar);
write(1/8*(x2-x1)^3);






