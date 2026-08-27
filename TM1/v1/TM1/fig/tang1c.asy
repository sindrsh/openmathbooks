import "../../inh" as inh;
import "../../drwgrph" as inh;
import tang1;

real k = 0.6;
real h = 0.025;

real fa = f(k);
real fc = f(k+h);
real fb = f(k-h);

pair A = (k,f(k));
pair B = (k-h,f(k-h));
pair C = (k+h,f(k+h));



real t = ((fa-fc)*(fb-fc)+2h^2)/(2*h*(fb+fc-2fa));

pair Sp = ((fb-fa)*t+k-1/2*h,(fa+fb)/2+h*t);  

ds(Sp,abs(A-Sp),dotted+red);
draw(graph(f,a,b),blue);

dott(A);
dott(B);
dott(C);
dott(Sp,"$S$",NW);

