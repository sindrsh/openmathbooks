import der2;

real c2 = 1.25;
mktcy(f(c2),"$f(b)$");
mktc(c2,"$b$");

pair A = (c,f(c));
pair B = (c2, f(c2));
pair r = (B-A)/abs(B-A);

real l1 = 2;
real l2 = 2;

draw((0,A.y)--A--(A.x,0),dotted);
draw((0,B.y)--B--(B.x,0),dotted);
draw(A-l1*r--B+l2*r,deepgreen);

dott(A);
dott(B);


