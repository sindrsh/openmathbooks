import inh;
unitsize(0.75cm);

path p = box((0,0),(3,2));
draw(p, black);
label("base", (1.5,0), align=S);
label("height", (3,1), align=E);

filldraw(p,arpeng);

