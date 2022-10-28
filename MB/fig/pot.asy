import inh;
import figs;
unitsize(0.5 cm);

label("$2^3$",black+fontsize(16pt));

path p = (0,0)--(1,0);
path p2 = (1,0)--(0,0);
draw(shift(0.6,0.25)*p2, arrow=Arrow(TeXHead), L=Label("eksponent",position=Relative(0)));
draw(shift(-1.75,-0.2)*p, arrow=Arrow(TeXHead), L=Label("grunntal",position=Relative(0)));
