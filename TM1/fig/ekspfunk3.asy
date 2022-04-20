import "../../inh" as inh;
import "../../drwgrph" as inh;

size(7cm);

real f(real x) { 
	return 10^(-x); 
}


real b = 1;
real a = 0;

real c = 0.15;
real dx = 0.35;
real c1 = c+dx;
real c2 = c+2*dx;

yaks(0,1,bex=1.15,l="$p(h)$");
xaks(a,b,l="$h$");

pair A = (c, f(c));
pair B = (c1, f(c1));
pair C = (c2, f(c2));

draw(graph(f,a,b),blue);

draw(A--B^^C--B,Cyan);

//draw((0,A.y)--A--(A.x,0),dotted);
//draw((0,B.y)--B--(B.x,0),dotted);
//draw((0,C.y)--C--(C.x,0),dotted);

draw(A--C,dotted);
dott(A);
dott(B);
dott(C);

mktc(c,"$c$");
mktc(c1,"$c+k$");
mktc(c2,"$c+2k$");

mktcy(f(c),"$p(c)$");
mktcy(f(c+dx),"$p(c+k)$");
mktcy(f(c+2dx),"$p(c+2k)$");

