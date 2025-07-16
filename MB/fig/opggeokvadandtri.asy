import "../../inhopg" as inh;
import "../../geo" as geo;
size(5cm);

pair B = (10,0);
pair C = (10, 10);
pair D = (0,10);
pair Ep = (3, 0);
pair F = (8, 10);

filldraw(O--B--C--D--cycle, arpen);
filldraw(O--F--Ep--cycle, white);
filldraw(O--F--Ep--cycle, arpeng);
draw(B--C, L="10",E);

