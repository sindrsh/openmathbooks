import inh;
import figs;
import tri;

size(5cm);

real a = 5;
real b = 4;
real c = 5.5;

Tri t = mktri(a,b,c);
t.mkv();
t.mkvec();


real sc = 0.3;
pair B2 = sc*t.C;
pair B2m = t.B+sc*(t.C-t.B); 
pair H = B2+cos(t.vA*pi/180)*abs(B2-B2m)*t.AC;

mksq2(H,B2m);

draw(t.A--t.B--t.C--cycle);
draw(H--B2m,dotted,L=Label("$$",position = Relative(0.5)));
draw(B2--B2m,dotted, L=Label("$$",align=N));
draw(t.A--B2m,dotted);
draw(B2--t.B,dotted);

dott(B2,"$B$",NW);
dott(B2m,"$B'$",NE);
dott(t.A,"$C$",SW);
dott(t.B,"$C'$",SE);
dott(t.C,"$A$",N);
dott(H,"$H$",NW);





