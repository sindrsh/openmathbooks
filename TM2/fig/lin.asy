import mods;
settings.outformat="pdf";
settings.render=0; 
defaultpen(fontsize(11pt));
size(7 cm,0);

//xyz(0.7,0.7,0.3, tc=false);   
triple O= (0.1,0,0);
draw(O -- O+0.5*X,L=Label("$x$",
    position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- O+0.5*Y,L=Label("$y$",
    position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- O+0.3*Z,L=Label("$z$", position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
triple A = X+Z;
triple B = 0.5X;
triple N = 3Z;
triple P = B+0.07A;


draw(B--B+0.6*A, blue, L=Label("$l$", position=Relative(0.9),align=S));
draw(B--B-0.1*A, blue);

//dot(P, L=Label("$A$"));
//dot(P+0.3A, L=Label("$B$"));
draw(P -- P+0.2A, arrow=Arrow3(DefaultHead2), red, L=Label("$\vec r$", position=Relative(0.5)));

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);
