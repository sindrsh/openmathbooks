import mm2tocm2a;

pair B = (10,0);
pair C = (3,5);
filldraw(O--B--C--cycle, arpenr);
draw(C--(C.x, 0), dotted);
