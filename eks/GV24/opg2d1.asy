import "../../inh" as inh;
unitsize(0.25cm);

void mk_fig(int a) {
  for(int i; i < a; ++i){
    for(int j; j < a-1; ++j){
      draw(shift(i,j)*unitsquare);
    }
  }
}

mk_fig(2);
shipout("opg2d1_1");
erase();
mk_fig(3);
shipout("opg2d1_2");
erase();
mk_fig(4);
shipout("opg2d1_3");
erase();
mk_fig(5);
shipout("opg2d1_4");
erase();
exit();
