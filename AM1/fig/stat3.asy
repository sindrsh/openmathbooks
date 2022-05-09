import inh;
import figs;

unitsize(2cm);

pen p1 = blue+opacity(0.4);
pen p2 = green+opacity(0.5);
pen p3 = purple+opacity(0.3);
pen p4 = red+opacity(0.5);
pen p5 = cyan+opacity(0.2);
pen p6 = yellow+opacity(0.5);

real r(real a){return a/300*2pi;}
real v = r(46);
path p = (0,0)--graph(f,0,v)--cycle;
filldraw(p,p1);

real v1 = v+r(23);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p2);

v = v1;
v1 = v+r(17);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p3);

v = v1;
v1 = v+r(91);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p4);

v = v1;
v1 = v+r(72);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p5);

v = v1;
v1 = v+r(51);
p = (0,0)--graph(f,v,v1)--cycle;
filldraw(p,p6);

real tdy = 0.05;
path b = scale(0.2,2tdy)*unitsquare;
real c = 0.6;
real a = 1.5;
real dy = -0.25;
real dx = 0.2;

filldraw(shift(a,c)*b,p1);
label("tiger (46)",(a+dx,c+tdy),align=E);

filldraw(shift(a,c+dy)*b,p2);
label("l\o ve (23)",(a+dx,c+dy+tdy),align=E);

filldraw(shift(a,c+2dy)*b,p3);
label("krokodille (17)",(a+dx,c+2dy+tdy),align=E);

filldraw(shift(a,c+3dy)*b,p4);
label("hund (91)",(a+dx,c+3dy+tdy),align=E);

filldraw(shift(a,c+4dy)*b,p5);
label("katt (72)",(a+dx,c+4dy+tdy),align=E);

filldraw(shift(a,c+5dy)*b,p6);
label("andre dyr (51)",(a+dx,c+5dy+tdy),align=E);

label("Favorittdyr (frekvens i parantes)", (1.2,1.2));
