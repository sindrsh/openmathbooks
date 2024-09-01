import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

draw(unitsquare);
pair B = (1,0);
pair C =(1,1);
pair D = (0,1);
pair Ep = (0.5, 0);
pair F = (0.2, 1);
pair G = (0.9, 1);
pair H = intersectionpoint(O--G, F--Ep);
pair Jp = intersectionpoint(F--B, Ep--G);
pair K = intersectionpoint(O--G, F--B);

filldraw(O--G--Ep--cycle, arpeng);
filldraw(B--F--Ep--cycle, arpen);
filldraw(Ep--Jp--K--H--cycle, white);

dott(Ep, "$E$", S);
