import vedder;

real h = 0.005;
triple O = (0, 0, 0);
triple A = f(t);
triple B = f(t-h);
triple C = f(t+h);
triple u = B-A;
triple v = C-A;
real r = abs(u)*abs(v)*abs(u-v)/(2*abs(cross(u, v)));
write(r);
triple rs = A + 1/2*(u+v)-(dot(u, v)*(cross(cross(u, v), u-v)))/(2*abs(cross(u, v))^2);

triple D1 = (0, 0, 0);
triple D2 = 2.5v;
triple D3 = D2-4u;
triple D4 = D3-2.5v;

path3 sq = D1--D2--D3--D4--cycle;
//draw(surface(shift(2u-0.25v)*sq), blue+opacity(0.1), nolight);




real r = abs(u)*abs(v)*abs(u-v)/(2*abs(cross(u, v)));
draw(circle(rs, r, cross(u, v)), red);
draw(A--rs, arrow=Arrow3(DefaultHead2));

draw(graph(f, a, b), green);

triple B1 = f(t)+0.5*fd(t);
triple C1 = f(t)-0.5*fd(t);
draw(B1+0.5*(B1-A)--C1, blue);

write(rs);





