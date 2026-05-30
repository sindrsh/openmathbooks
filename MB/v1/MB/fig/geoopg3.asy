import "../../inh" as inh;
import "../../geo" as geo;
size(12cm);

pair f(int v) {
	real u = v*pi/180; 
	return (cos(u),sin(u));
}

real l = 100;

real c = 5;
int v1 = 20;
int v2 = 110;
int v3 = abs(v2-v1);
pair A = (0,0);
pair B = (c,0);
pair Ca = A+l*f(v1);
pair Cb = B+l*(-f(v2).x, f(v2).y);
pair C = intersectionpoint(A--Ca,B--Cb);

filldraw(A--B--C--cycle,arpeno);

label("$A$", A, align=SW);
label("$B$", B, align=SE);
label("$C$", C, align=N);

real s = 0.7;
Tri t = mktri(s*abs(C-B), s*abs(A-B),s*abs(A-C));

t.rors(sh=(c+1.5,0));


filldraw(t.A--t.B--t.C--cycle, arpeng);
label("$D$", t.A,align=SW);
label("$E$", t.B, align=SE);
label("$F$", t.C, align=N);


