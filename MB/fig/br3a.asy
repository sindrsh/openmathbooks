import inh;
unitsize(2 cm);

path b = box((0,0), (1,1));

filldraw(scale(0.5)*b, blue+opacity(0.1), drawpen=blue);
label("$\displaystyle=\frac{1}{4}$", (0.75, 0.25));
