import inh;
import figs;
import tri;
size(8cm);

pair f(real z){
    return (cos(z), sin(z));
}  

real a = 2;
real b = 1;

pair A = (a,0); 


real c1 = pi/2;
real c2 = pi/6;
real c3 = pi/3;
pair C1 = f(c1);
pair C2 = f(c2);
pair C3 = f(c3); 

draw(O--A);

real r1 = abs(C1-A);
real r2 = abs(C2-A);
real r3 = abs(C3-A);

c1 = pi-asin(C1.y/r1);
c2 = pi-asin(C2.y/r2);
c3 = pi-asin(C3.y/r3);

draw(graph(f,0,pi),blue);

real vx = pi/15;

draw(shift(A)*scale(r2)*graph(f,pi,c2-vx),dotted);
//draw(shift(A)*scale(r3)*graph(f,pi,c3-vx),dotted);
//draw(shift(A)*scale(r1)*graph(f,pi,c1-vx),dotted);

draw(A--C3,dashed);
draw(A--C2,dashed);
//draw(A--C1,dashed);

dott(A,"$B$",SE);
dott(O,"$A$",SW);
//dott(C1,"$C$",NW);
dott(C2,"$C_1$",W);
dott(C3,"$C_2$",1.5N+0.5W);
dott(f(0),"$D$",S);
dott(f(pi),"$E$",S);



