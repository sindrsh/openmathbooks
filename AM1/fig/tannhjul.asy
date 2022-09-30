import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(8cm);

transform sh = shift(0,0);

real r = 2;
int i = 12;

real l = 0.5;
real t = pi/2.1;
real v = 2pi/i;
pair A = r*f(pi/2+v/2);
pair B = r*f(pi/2-v/2);
real u = v/4;
pair C = r*f(pi/2+u);
pair D = r*f(pi/2-u);
pair Ep = C + l*f(t);
write(abs(C-Ep));
pair F = reflect((0,0), (0,1))*Ep;

path p0 = arc((0,0), B, D)--D--F--Ep--arc(O, C, A);
path p1 = p0;
for(int k=1; k<i; ++k){
	p1 = p1--rotate(360/i*k)*p0;
}
draw(p1,red);

real s = v*r;
int i = 21;
real r = i*s/2pi;

real v = 2pi/i;
pair A = r*f(pi/2+v/2);
pair B = r*f(pi/2-v/2);
real u = v/4;
pair C = r*f(pi/2+u);
pair D = r*f(pi/2-u);
pair Ep = C + l*f(t);
write(abs(C-Ep));
pair F = reflect((0,0), (0,1))*Ep;

path p0 = arc((0,0), B, D)--D--F--Ep--arc(O, C, A);
path p1 = p0;
for(int k=1; k<i; ++k){
	p1 = p1--rotate(360/i*k)*p0;
}
draw(shift(6.15,0)*rotate(13)*p1,blue);
label("1", (2.8,0));
label("A", (2.2,0));

