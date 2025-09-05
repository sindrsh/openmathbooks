import "../../inh" as inh;
unitsize(1cm);


real a = 5;
real h = 4;
real m = 5;
pair A = (0,0);
pair B = (a,0);
pair C = (3,h);
pair D = (C.x,0);

filldraw(A--C--(0,h)--cycle, arpeno);
filldraw(C--(a,h)--B--cycle, arpeng);

fill(C--D--B--cycle, arpeny);
fill(A--D--C--cycle, arpenr);

draw(D--C,dotted);
draw(A--B);

label("4", (C.x,h/2), align=E);
label("5", (2.5,0), align=S);
