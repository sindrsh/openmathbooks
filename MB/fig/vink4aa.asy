import inh;
import tri;
import figs;

unitsize(2cm);


pair A = (-1,0);
pair B = (1,0);
real v = 35;
real v2 =0;
pair C = rotate(v)*B;
pair D = rotate(v2)*B;
path s = A--B;
transform sh = shift(0,-0.4);
path s1 = rotate(v)*s;
path s2 = sh*rotate(v2)*s;

pair t = intersectionpoint(s1,s2);
dv(B,C,O,"$$",sc=0.25,al=0.2N+E);
dv(-B,-C,O,"$$",sc=0.25,al=0.5S+W);

draw(s);
draw(s1);
dott(O,"$O$",SE);
dott(A,"$A$",W);
dott(B,"$B$",E);
dott(C,"$C$",NE);
dott((-C.x,-C.y),"$D$",SW);

