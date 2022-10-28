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
int v2 = 100;
int v3 = abs(v2-v1);
pair A = (0,0);
pair B = (c,0);
pair Ca = A+l*f(v1);
pair Cb = B+l*(-f(v2).x, f(v2).y);
pair C = intersectionpoint(A--Ca,B--Cb);

draw(A--B--C--A);
dv(B,C,A,"$"+(string) v1+"^\circ"+"$",0.25N+E,sc=1);
dv(A,C,B,"",0.25N+W,sc=0.5);
dv(A,B,C,"",S,sc=0.3);

label("$A$", A, align=SW);
label("$B$", B, align=SE);
label("$C$", C, align=N);

real s = 0.7;
Tri t = mktri(s*abs(C-B), s*abs(A-C), s*abs(A-B));

t.rors(sh=(c+1.5,0));

dv(t.B,t.C,t.A,"",0.25N+E,sc=1);
dv(t.A,t.C,t.B,"$"+(string) v2+"^\circ"+"$",0.25N+W,sc=0.5);
dv(t.A,t.B,t.C,"",S,sc=0.3);

draw(t.A--t.B--t.C--t.A);
label("$D$", t.A,align=SW);
label("$E$", t.B, align=SE);
label("$F$", t.C, align=N);


