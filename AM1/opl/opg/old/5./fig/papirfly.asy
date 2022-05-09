import "/home/sindre/G/fig/figs.asy" as figs;
settings.outformat="png";
defaultpen(fontsize(12 pt));
defaultpen(2pt);

settings.render = 16;

unitsize(0.5 cm);

pair O = (0,0);
pair A = (3,0);
pair B = (0,-3);
pair D = (0,B.y-1.8);
pair Ep = (8.3,D.y);
pair F = (0,D.y-6.7);
pair G = (Ep.x,F.y);

pair AB = (B-A)/(abs(B-A));
pair ABp = (-AB.y,AB.x);

real sh = 0.05; 

path p1 = O--A--B--cycle;
path p2 = D--B--A--Ep--cycle;
path p3 = D--Ep--G--F--cycle;

transform r= reflect((0,-10),(0,10));

draw(p1,blue);
draw(A--Ep);
draw(p3,green);


draw(r*(O--A--B));
draw(r*(D--Ep--G--F),black);
draw(r*(p2),red);






