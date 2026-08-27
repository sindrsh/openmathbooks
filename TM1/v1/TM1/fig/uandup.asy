import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(2cm);

real a = 1;
real b = 2;

pair u = (a, b);
pair up = (-b, a);

pair O = (0, 0);
draw(O--u, arrow=Arrow, L="$\textbf{w}$", SE);
draw(O--up, red, arrow=Arrow);
draw(O-- -up, green, arrow=Arrow);

label("$\textbf{w}_p$", up/2, NE);
label("$-\textbf{w}_p$", -up/2, SW);
