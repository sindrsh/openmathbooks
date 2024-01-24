import opgaro;
defaultpen(fontsize(16 pt));

real g = 9;
real b = 5;
filldraw(box((0,0),(g,b)), arpeng);
label((string) g, (g/2,0), align=S);
label((string) b, (g,b/2), align=E);
