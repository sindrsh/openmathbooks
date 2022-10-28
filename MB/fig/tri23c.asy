import inh;
import tri;
unitsize(0.8cm);

pair A = (0,0);
pair B = (4,0);
pair C = (0,3);
pair D = (C.x+3,C.y);
pair Ep = D+(0,1);
pair F = Ep-(6,0);

pen p = blue;
draw(B--A,L=Label("$\color{black}4$"),N,p);
draw(B--C,L=Label("$\color{black}5$"),NE,p);
draw(D--C,L=Label("$\color{black}3$"),N,p);
draw(Ep--D,L=Label("$\color{black}1$"),E,p);
draw(Ep--F,L=Label("$\color{black}6$"),N,p);
draw(A--F,L=Label("$\color{black}5$"),SW,p);

write(abs(B-C),abs(A-F));


