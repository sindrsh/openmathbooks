import "../../inh" as inh;

unitsize(1cm);

pair O = (0,0);
pair A = (3,1);
pair B = (1, 2);

pair C = A+B;


draw(O--B--C--A--O);


dott(O,"$O$",SW);
dott(B,"$D$",1.2N+0.25E);
dott(C,"$C$",NE);
dott(A,"$B$",1.2S+0.25W);
