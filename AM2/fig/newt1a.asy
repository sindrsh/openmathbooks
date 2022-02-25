import newt1;

real c = 1.2;
mktcy(f(c),"$f(x_0)$");
mktc(c,"$x_0$",pos=BeginPoint);

pair A = (c,f(c));
draw((0,A.y)--A--(A.x,0),dotted);

pair B = (0.5,g(c,0.5));
pair C = (b,g(c,b));

draw(B--C,deepgreen);

dott(A);
mktc(x1(c), "$x_1$");

write(x1(c));

