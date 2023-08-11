defaultpen(fontsize(9pt));
import graph3;
import three;
settings.outformat="pdf";
size(5cm);
settings.render=0;
currentprojection=orthographic((1,-1,0.5));

triple A=(0,0,0), B=(5,0,0),
       C=(4,2,0), T=(0,0,5);

surface s1 = surface(A--B--C--cycle);
surface s2 = surface(A--B--T--cycle);
surface s3 = surface(A--C--T--cycle);
surface s4 = surface(B--C--T--cycle);

draw(s1, blue+opacity(0.3));
draw(s2, blue+opacity(0.3));
draw(s3, blue+opacity(0.3));
draw(s4, blue+opacity(0.1));

draw(A--B--C--A);
draw(T--A);
draw(T--B);
draw(T--C);
//draw(pA--pD, arrow=Arrow3(DefaultHead2), L=Label("$\vec v$",align=S, position=Relative(0.5)));

xaxis3(L="$x$", -1,7, arrow=Arrow3(TeXHead3));
yaxis3(L="$y$", -1, 3, arrow=Arrow3(TeXHead3));
zaxis3(L="$z$", -1,6, arrow=Arrow3(TeXHead3));
label("$A$", A, 2S+E);
label("$B$", B, S);
label("$C$", C, E);
label("$T$", T, W);
