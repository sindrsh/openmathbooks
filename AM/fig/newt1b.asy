import newt1;

real c = 2.77687861271676;
mktcy(f(c),"$f(x_1)$");
mktc(c,"$x_1$");

pair A = (c,f(c));
draw((0,A.y)--A--(A.x,0),dotted);

pair B = (2.15,g(c,2.15));
pair C = (b,g(c,b));

draw(B--C,deepgreen);

dott(A);
mktc(x1(c), "$x_2$");

write(x1(c));

