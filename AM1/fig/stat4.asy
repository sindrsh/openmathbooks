import inh;
import figs;

unitsize(2cm);

pen p1 = blue+opacity(0.4);
pen p2 = green+opacity(0.5);
pen p3 = purple+opacity(0.3);
pen p4 = red+opacity(0.5);
pen p5 = cyan+opacity(0.2);
pen p6 = yellow+opacity(0.5);
pen p7 = Magenta+opacity(0.4);
pen p8 = orange+opacity(0.2);
pen p9 = black+opacity(0.2);

real r(real a){return a/15*2pi;}
real v = r(2);
path p = (0,0)--graph(f,0,v)--cycle;
filldraw(p,p1);

real v1 = v+r(2);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p2);

v = v1;
v1 = v+r(3);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p4);

v = v1;
v1 = v+r(2);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p5);

v = v1;
v1 = v+r(2);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p6);

v = v1;
v1 = v+r(1);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p7);

v = v1;
v1 = v+r(2);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p8);

v = v1;
v1 = v+r(1);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p9);

real tdy = 0.05;
path b = scale(0.2,2tdy)*unitsquare;
real c = 1;
real a = 1.5;
real dy = -0.25;
real dx = 0.2;

filldraw(shift(a,c+dy)*b,p1);
label("0 (2)",(a+dx,c+dy+tdy),align=E);

filldraw(shift(a,c+2dy)*b,p2);
label("1 (2)",(a+dx,c+2dy+tdy),align=E);

filldraw(shift(a,c+3dy)*b,p4);
label("4 (3)",(a+dx,c+3dy+tdy),align=E);

filldraw(shift(a,c+4dy)*b,p5);
label("5 (2)",(a+dx,c+4dy+tdy),align=E);

filldraw(shift(a,c+5dy)*b,p6);
label("6 (2)",(a+dx,c+5dy+tdy),align=E);

filldraw(shift(a,c+6dy)*b,p7);
label("7 (1)",(a+dx,c+6dy+tdy),align=E);

filldraw(shift(a,c+7dy)*b,p8);
label("8 (2)",(a+dx,c+7dy+tdy),align=E);

filldraw(shift(a,c+8dy)*b,p9);
label("14 (1)",(a+dx,c+8dy+tdy),align=E);

label("Epler spist i løpet av uka (frekvens i parantes)", (.5,1.2));
