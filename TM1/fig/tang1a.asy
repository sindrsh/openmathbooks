import "../../inh" as inh;
import "../../drwgrph" as inh;

import tang1;

real h = 0.2;

pair A = (k,f(k));
pair B = (k-h,f(k-h));
pair C = (k+h,f(k+h));

draw(graph(f,a,b));

//dott(A,"$A=(a, f_a)$",SE);
//dott(B,"$B=(a-h,f_b)$",SE);
//dott(C,"$C=(a+h,f_c)$",SE);

dott(A,"$A$",1.5S);
dott(B,"$B$",1.5S);
dott(C,"$C$",SE);



