import inh;
import figs;

unitsize(2cm);


pair A = f(pi/6);
pair B = f(0);
pair C = -A;
pair D = -B;

dv(D,A,O,red,sc=0.25,l="",D=(2pi,0));
dv(B,A,O,l="",sc=0.4);

draw(B--D);
draw(A--C);

//dott(A,"$A$",NE);
//dott(B,"$B$",E);
//dott(C,"$C$",SW);
//dott(D,"$D$",W);
//dott(O,"$O$",S);



