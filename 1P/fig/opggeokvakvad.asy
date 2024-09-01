import "../../inhopg" as inh;
import "../../geo" as geo;
size(8cm);


pair B = (1,0);
pair C = (1, 1);
pair D = (0,1);
real y = 0.25;
pair Ep = B + (0,y);
real z = abs(Ep-C)/abs(Ep)*y;
pair F = Ep+z*Ep/abs(Ep);
pair G = F+(-F.y, F.x);
pair H = G-F;
pair Jp = (0,2);
pair K = intersectionpoint(Jp--O, G--H);



draw(F--G--H--O--F);
draw(unitsquare);
