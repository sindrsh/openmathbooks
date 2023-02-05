import "/home/sindre/openmathbooks/MB/fig/figs.asy" as figs;
settings.outformat="pdf";
defaultpen(fontsize(12 pt));

unitsize(1 cm);

for(int i=1; i<=12; ++i){
  jmp(i, y=i);
  jmp(i-13, xs=13+1.5, y=i, p=Cyan);
  path p = (0,0)--(i,0);
  path p2 = (i-13,0)--(0,0);
  draw(shift(0,i)*p,blue+1bp);
  draw(shift(13+1.5,i)*p2,Cyan+1bp);
}
