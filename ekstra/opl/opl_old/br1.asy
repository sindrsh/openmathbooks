settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(4 cm);

path b = box((0,0), (1,1));

draw(b, blue);
filldraw(b, blue+opacity(0.0), drawpen=blue);
