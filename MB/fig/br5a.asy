import inh;
unitsize(2cm);


import figs;

brsym("=", 1.25);
brsym("+", 2.75);

brok(4,2,4);
brok(4,2,0,sh=(1.5,0));
brok(4,2,0,sh=(3,0));

path b = box((0,0), (0.25,0.5));

filldraw(shift(0.75,-0.5)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(0.5,-0.5)*b, blue+opacity(0.1), drawpen=blue);


path b = shift(1.5,0)*box((0,0), (0.25,0.5));

filldraw(shift(0,-1)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(0.25,-0.5)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(0,-0.5)*b, blue+opacity(0.1), drawpen=blue);

path b = shift(2.75,0)*box((0,0), (0.25,0.5));


filldraw(shift(0.5,-1)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(1,-0.5)*b, blue+opacity(0.1), drawpen=blue);
filldraw(shift(0.75,-0.5)*b, blue+opacity(0.1), drawpen=blue);


