settings.outformat="pdf";
//defaultpen(fontsize(11pt));

import mods;
size(6cm,0);
//unitsize(1cm);

real c = 35;
real a = cos(pi/180*c);
real b = sin(pi/180*c); 
real d = tan(pi/180*c);
draw((0,0) -- (a, b));
draw((0,0) -- (1, 0), L=Label("$\cos x$"), align=N);
draw((0,0) -- (1, 0), L=Label("$1$", position=Relative(0.6)));
draw((a,0)--(a,b), L=Label("$\sin x$", align=W));
real linewidth = linewidth(currentpen);
margin ArrowMargins = TrueMargin(linewidth, 0.5 linewidth);
draw(arc((0,0), r=1, angle1=0, angle2=c), L=Label("$x$", align=W),
arrow=Arrow(TeXHead),margin=ArrowMargins, blue);
draw((0,0) -- (1, d));
draw((1,0) -- (1, d), dotted, L=Label("$\tan x$"));
