import inh;
unitsize(1cm);


int v = 0;
pair A = (0,0);
pair B = (2,0);
pair C = (4,2);
path p = A--B--C--cycle;
draw(p);

draw(A--B, L="grunnlinje",align=S);
draw(B--(4,0)--C,dotted,L=Label("h\o gde", position=Relative(0.75)));
draw(shift((4,0))*box((0,0),(-0.2,0.2)), black);
filldraw(p,blue+opacity(0.15));
