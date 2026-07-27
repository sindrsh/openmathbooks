import "../../inhopg" as inh;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(6cm, 6cm, keepAspect=false);

real f(real x){
	return 2*(x-2)*(x-4);
}

real x1 = 1;
real x2 = 5.5;
real x3 = 1/2*(x1+x2);
real x4 = 1/2*(x1+x3);
real x5 = 1/2*(x3+x2);
real x6 = 1/2*(x1+x4);
real x7 = 1/2*(x3+x4);
real x8 = 1/2*(x3+x5);
real x9 = 1/2*(x2+x5);

pair A = (x1, f(x1));
pair B = (x2, f(x2));
pair C = (x3, f(x3));
pair D = (x4, f(x4));
pair Ep = (x5, f(x5));
pair F = (x6, f(x6));
pair G = (x7, f(x7));
pair H = (x8, f(x8));
pair Ip = (x9, f(x9));


pair s = 1/2*(A+B)-C;
pair Am = A-s;
pair Bm = B-s;

filldraw(A--C--D--cycle, arpen);
filldraw(B--C--Ep--cycle, arpen);
filldraw(A--F--D--cycle, arpenr);
filldraw(D--G--C--cycle, arpenr);
filldraw(H--C--Ep--cycle, arpenr);
filldraw(Ip--Ep--B--cycle, arpenr);




draw(graph(f, x1, x2));
draw(Am--Bm);

filldraw(A--B--C--cycle, white);
filldraw(A--B--C--cycle, arpeng);

dott(A, "$A$", NW);
dott(B, "$B$", NE);
dott(C, "$C$", S);
dott(D, "$D$", SW);
dott(Ep, "$E$", SE);
dott(F, "$F$", SW);
dott(G, "$G$", S);
dott(H, "$H$", SE);
dott(Ip, "$I$", SE);

Tri t = mktri(abs(A-C), abs(A-B), abs(C-B));

write(t.Ar);
write(1/8*(x2-x1)^3);






