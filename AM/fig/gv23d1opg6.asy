import "../../inhopg" as inh;
import "../../drwgrph" as drwprgh;

size(12cm, 8cm, keepAspect=false);

real f(real x){
  return 60x;
}


mkgrid((0,1), (0,60), dx=0.1, dy=10);
xaks(0,1, l="timer ($x$)", bex=1.05, tck=true, tc=1);
yaks(0,60, l="km ($y$)", bex=1.05, tck=true, tc=10);
draw(graph(f, 0, 0.9), blue);
