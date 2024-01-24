import opgaro;
defaultpen(fontsize(16 pt));

real g = 10;
real b = 4;
filldraw(box((0,0),(g,b)), arpenr);
label((string) g, (g/2,0), align=S);
label((string) b, (g,b/2), align=E);
