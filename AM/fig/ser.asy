import "../../inhopg.asy" as inhopg;

size(5cm, 5cm, keepAspect=false);

real[] avdrag    = {16666.67, 16666.67, 16666.67, 16666.67, 16666.67, 16666.67};
real[] renter      = {3000.00, 2536.21, 2058.50, 1566.46, 1059.67, 537.66};

for (int i=0; i<6; ++i) {
  filldraw(shift(i*2000, 0)*scale(1000, avdrag[i])*unitsquare, arpen);
  filldraw(shift(i*2000, avdrag[i])*scale(1000, renter[i])*unitsquare, arpeng);
}
