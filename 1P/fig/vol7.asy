import solids;
settings.render=0; 
settings.prc=false; // on se restreint à une vue 2d
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(2cm,0);

currentprojection=orthographic(10,3,8);

real a=3;

real v = 107/180*pi;
triple pA=(a*cos(v),a*sin(v),0);

triple S=(0,0,0);
draw(S--pA);
revolution b=sphere(S,a);
draw(b,1,longitudinalpen=nullpen);
draw(b.silhouette(),1bp+blue);

dot(S);
