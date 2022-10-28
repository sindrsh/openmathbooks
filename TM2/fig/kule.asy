import solids;
settings.render=0; 
settings.prc=false; // on se restreint à une vue 2d
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(4.5cm,0);
usepackage("esvect");

currentprojection=orthographic(10,3,8);

//dotfactor=3.5;

real a=3;
triple S=(0,0,0);
triple A = a*Z+2.352Y;

revolution b=sphere(S,a);

draw(Label("$\vv{SA}$",align=SE),arrow=Arrow3(DefaultHead2,emissive(black)), O--A); 

draw(b,1,longitudinalpen=nullpen);
draw(b.silhouette(),1bp+blue);

dot(A, L=Label("$A$", align=NE));
dot(S, L=Label("$S$", align=W));
