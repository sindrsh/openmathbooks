import inh;
unitsize(2 cm);

path b = box((0,0), (1,1));

draw(b, blue);
filldraw(b, blue+opacity(0.1), drawpen=blue);
label((string) 1, (0.5,0.5)); 
label("$=\;1$", (1.3, 0.5));
