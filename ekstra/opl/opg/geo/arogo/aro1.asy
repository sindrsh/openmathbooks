import opgaro;
defaultpen(fontsize(16 pt));

real g = 3;
real b = 2;
filldraw(box((0,0),(g,b)), arpenc);
label((string) g, (g/2,0), align=S);
label((string) b, (g,b/2), align=E);

label("$" + " \textrm{Omkrins} = " + (string) g + "+" + (string) g + "+" + (string) b + "+" + (string) b + "=" + (string) (2g+2b) + "$", (g/2, -1.5));
label("$" + "\textrm{Areal} = " + (string) g + "\cdot" + (string) b + "=" + (string) (g*b) + "$", (g/2,-2.5));
