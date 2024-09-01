import inh;
import figs;
import tri;

unitsize(0.5cm);

Tri t = mktri(5,7,6);
t.mkt();
t.mkv();

pair Bm = t.C+2t.BC;
pair Am = t.C+(Bm.y-t.C.y)/sin(t.vA*pi/180)*t.AC;

pair A2 = shift(1,0)*(t.A.x,t.C.y);
pair B2 = shift(1,0)*(t.B.x,t.C.y);

dv(t.B,t.C,t.A,sc=0.7,"$$");
dv(Am,B2,t.C,sc=0.7,"$$");
dv(t.A,t.C,t.B,"$$",sc=0.6,al=NW,p=red);
dv(Bm,A2,t.C,"$$",sc=0.6,al=NW,p=red);
dv(t.A,t.B,t.C,"$$",sc=0.5,al=S+0.5W,p=green);
dv(Bm,Am,t.C,"$$",sc=0.5,al=N+0.5E,p=green);

draw(t.A--t.B--t.C--cycle);
draw(t.C--Bm,dotted);
draw(t.C--Am,dotted);
draw(A2--B2,dotted);

label(t.A,"$A$",SW);
label(t.B,"$B$",SE);
label(t.C,"$C$",1.3S+1.4E);
label(Bm,"$D$",NW);
label(Am,"$E$",NE);
label(A2,"$F$",SW);
label(B2,"$G$",SE);

