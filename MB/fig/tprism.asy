import tri;
import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 10;
defaultpen(fontsize(11 pt));

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

size(1.75cm);


Tri t = mktri(3.2,4.6,5);

triple A = (0,0,0);
triple B = (t.B.x,t.B.y,0);
triple C = (t.C.x,t.C.y,0);

triple Am = (1,0,3);

triple Bm = B+Am;
triple Cm = C+Am;

path3 p1 = A--B--C--cycle;
path3 p2 = Am--Bm--Cm--cycle;
path3 p3 = B--C--Cm--Bm--cycle;
path3 p4 = A--B--Bm--Am--cycle;


pen p = blue+opacity(0.1);
surface s1 = surface(p1);
surface s2 = surface(p2);
surface s3 = surface(p3);
surface s4 = surface(p4);

draw(p1,blue);
draw(p2,blue);
draw(p3,blue);
draw(p4,blue);

draw(s1,p);
draw(s2,p);
draw(s3,p); 
draw(s4,p); 


