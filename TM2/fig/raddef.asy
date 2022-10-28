import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(2cm);

draw(unitcircle);

pair f(real z){
    return (cos(z), sin(z));
}
real r = 20;
real v = pi/3;
pair A = f(pi/3);
pair B = (1,0);
A = rotate(r)*A;
B = rotate(r)*B;

dv(A,B,(0,0),"$v$",sc=0.25,al=NE);

draw((0,0)--1.4A);
draw((0,0)--1.2B);

path s = rotate(r)*graph(f, 0, v, operator ..);
draw(s, arrow=ArcArrow(), red); //, L=Label("$\frac{\pi}{3}$", position=Relative(0.5)));

