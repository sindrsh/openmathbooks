import inh;
unitsize(0.7cm);

real g = 4;
real b = 2;
filldraw(box((0,0),(g,b)), arpenc);
label((string) g, (g/2,0), align=S);
label((string) b, (g,b/2), align=E);



