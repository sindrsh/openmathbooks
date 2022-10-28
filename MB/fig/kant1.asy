import inh;
import figs;
unitsize(1cm);

pair B = (2,0);
pair C = (-1,1.5);

draw(O--B--C--cycle);

transform sh = shift((3,0));
pair A = sh*O;
sh = rotate(60,A)*shift((3,0));
pair D = sh*(2,2);
B = sh*(3,0);
C = sh*(2,3);

draw(A--B--C--D--cycle);

sh = shift((6,0));
A = sh*O;
sh = rotate(30,A)*shift((6,0));
pair D = sh*(1,1);
pair Ep = sh*(2,3.5);
B = sh*(2.5,0);
C = sh*(2,2);

draw(A--B--C--D--Ep--cycle);




