import "../../inhopg.asy" as inhopg;

size(5cm, 5cm, keepAspect=false);

real[] renter      = {3000.00, 2536.21, 2058.50, 1566.46, 1059.67, 537.66};
real[] avdrag      = {15459.75, 15923.54, 16401.25, 16893.29, 17400.08, 17922.09};

for (int i=0; i<6; ++i) {
  filldraw(shift(i*2000, 0)*scale(1000, avdrag[i])*unitsquare, arpen);
  filldraw(shift(i*2000, avdrag[i])*scale(1000, renter[i])*unitsquare, arpeng);
}
