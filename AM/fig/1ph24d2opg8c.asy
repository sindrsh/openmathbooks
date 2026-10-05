import p1h24d2opg8;

pair Ep = (s, s);
pair F = B + (-s, s);
pair G = C + (-s, -s);
pair H = D + (s, -s);

path p = scale(s)*unitsquare;
filldraw(p, white, white);
filldraw(shift(F)*rotate(-90)*p, white, white);
filldraw(shift(G)*p, white, white);
filldraw(shift(H)*rotate(90)*p, white, white);


path p1 = (0,s)--(s,s)--(s, 0);
draw(p1);
draw(shift(B)*rotate(90)*p1);
draw(shift(C)*rotate(180)*p1);
draw(shift(D)*rotate(-90)*p1);

draw(Ep--F--G--H--Ep, dashed);
