import "../inh.asy" as inh;
import "../geo.asy" as geo;

size(5cm);

pair A = (0, 0);
pair v = (5, 0);
pair u = (3, 5);

Tri t = mktri(abs(u-v), abs(u), abs(v));
t.mkR();

write(t.R);

pair vt = (-v.y, v.x);
pair ut = (-u.y, u.x);

write(t.Rs);
write((abs(v)^2*ut-abs(u)^2*vt)/(2*(u.x*v.y-v.x*u.y)));
write(u/2+(abs(v)^2-(u.x*v.x+u.y*v.y))/(2*(-u.y*v.x+u.x*v.y))*ut);
write(v/2+(abs(u)^2-(v.x*u.x+v.y*u.y))/(2*(-v.y*u.x+v.x*u.y))*vt);

write((u/2+(abs(v)^2-(u.x*v.x+u.y*v.y))/(2*(-u.y*v.x+u.x*v.y))*ut + v/2+(abs(u)^2-(v.x*u.x+v.y*u.y))/(2*(-v.y*u.x+v.x*u.y))*vt)/2);

draw(A--u--v--A);
ds(t.Rs, t.R);

