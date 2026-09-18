import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;
size(3cm);
pair O = (0, 0);

real x = 5;
real y = 4;
real z = x+y;

pair B = (y, 0);
pair C = (y, -y-x);
pair D = (0, -y-x);

pair B2 = (y+z,0);
pair C2 = (y+z,-y);
pair D2 = (y, -y);

pair A3 = (y+x, -y);
pair C3 = (y+z, -y-z);
pair D3 = (z, -y-z);

pair B4 = (y+x, -z);
pair C4 = (y+x, -y-z);
pair D4 = (0, -y-z);

draw(O--B--C--D--O);
draw(B--B2--C2--D2--B);
draw(A3--C2--C3--D3--A3);
draw(D--B4--C4--D4--D);

label("$y$", 1/2*B, S);
label("$x$", 1/2*(D2+C), E);


