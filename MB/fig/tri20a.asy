import inh;
unitsize(1cm);


real a = 5;
real h = 4;
real m = 5;
pair A = (0,0);
pair B = (a,0);
pair C = (3,h);
pair D = (C.x,0);

filldraw(A--C--(0,h)--cycle, orange+opacity(0.6));
filldraw(C--(a,h)--B--cycle, deepgreen+opacity(0.4));

fill(C--D--B--cycle, yellow+opacity(0.2));
fill(A--D--C--cycle, red+opacity(0.5));

draw(D--C,dotted);
draw(A--B);

label("4", (C.x,h/2), align=E);
label("5", (2.5,0), align=S);
